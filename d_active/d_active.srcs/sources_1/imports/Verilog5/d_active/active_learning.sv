`timescale 100ps/100ps
module acitve_learning
#(
    parameter D = 'd1000
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [D-1:0] eventHV,
    input wire         event_flag,
    input wire [7:0]   oracle_label,
    input wire         oracle_flag,

    output reg [7:0]   items,
    output reg         item_flag
);

localparam [9:0] R1 = D / 2; // 500
localparam [7:0] R2 = R1 / 4; // 125
localparam [5:0] R3 = R2 / 5; // 25
localparam [3:0] R4 = R3 / 5; // 5
localparam [7:0] MAX_ITEM_IDX = 'd16;

reg         rd_en;
reg [7:0]   itemNum;
reg [3:0]   rd_addr;
reg         dis_en1;
reg [1:0]   dis_reg1[R1-1:0]; 
reg         dis_en2;
reg [3:0]   dis_reg2[R2-1:0];
reg         dis_en3;
reg [5:0]   dis_reg3[R3-1:0];
reg         dis_en4;
reg [7:0]   dis_reg4[R4-1:0];
reg         dis_en5;
reg [9:0]   dis;
reg         getMin_en;
reg [9:0]   minDis;
reg [7:0]   itemCnt;
reg [7:0]   minIdx;
reg         min_done;
reg         isConfident;
reg [9:0]   confidThrs[MAX_ITEM_IDX-1:0];
reg         confident_flag;
reg [7:0]   itemSeen[MAX_ITEM_IDX-1:0];
reg [3:0]   wr_addr;
reg [7:0]   intpHV[D-1:0];
reg         intreg_flag;
reg [D-1:0] new_pHV;
reg         wr_en;
// reg         rstr;

wire [D-1:0] item_pHV;

genvar i;

// initial begin
//     itemNum <= 8'd7;
//     confidThrs <= '{290,280,280,280,275,275,275,0,0,0,0,0,0,0,0,0};
//     itemSeen <= '{4,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0};
// end

// rd_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        rd_en <= 1'b0;
    end else if(event_flag) begin
        rd_en <= 1'b1;
    end else if(rd_en && rd_addr == itemNum-1) begin
        rd_en <= 1'b0;
    end
end

// rd_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        rd_addr <= 4'b0;
    end else if(rd_en && rd_addr < itemNum-1) begin
        rd_addr <= rd_addr + 1'b1;
    end else if(rd_en && rd_addr == itemNum-1) begin
        rd_addr <= 4'b0;
    end else if(oracle_flag) begin
        rd_addr <= oracle_label;
    end
end

// dis_en1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis_en1 <= 1'b0;
    end else begin
        dis_en1 <= rd_en;
    end
end

// dis_reg1
generate
    for(i=0; i<R1; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dis_reg1[i] <= 1'b0;
            end else if(dis_en1) begin
                dis_reg1[i] <= (eventHV[2*i] ^ item_pHV[2*i]) + (eventHV[2*i+1] ^ item_pHV[2*i+1]);
            end
        end
    end
endgenerate

// dis_en2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis_en2 <= 1'b0;
    end else begin
        dis_en2 <= dis_en1;
    end
end

// dis_reg2
generate
    for(i=0; i<R2; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dis_reg2[i] <= 1'b0;
            end else if(dis_en2) begin
                dis_reg2[i] <= dis_reg1[4*i] + dis_reg1[4*i+1] + dis_reg1[4*i+2] + dis_reg1[4*i+3];
            end
        end
    end
endgenerate

// dis_en3
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis_en3 <= 1'b0;
    end else begin
        dis_en3 <= dis_en2;
    end
end

// dis_reg3
generate
    for(i=0; i<R3; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dis_reg3[i] <= 1'b0;
            end else if(dis_en3) begin
                dis_reg3[i] <= dis_reg2[5*i] + dis_reg2[5*i+1] + dis_reg2[5*i+2] + dis_reg2[5*i+3] + dis_reg2[5*i+4];
            end
        end
    end
endgenerate

// dis_en4
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis_en4 <= 1'b0;
    end else begin
        dis_en4 <= dis_en3;
    end
end

// dis_reg4
generate
    for(i=0; i<R4; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dis_reg4[i] <= 1'b0;
            end else if(dis_en3) begin
                dis_reg4[i] <= dis_reg3[5*i] + dis_reg3[5*i+1] + dis_reg3[5*i+2] + dis_reg3[5*i+3] + dis_reg3[5*i+4];
            end
        end
    end
endgenerate

// dis_en5
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis_en5 <= 1'b0;
    end else begin
        dis_en5 <= dis_en4;
    end
end

// dis
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        dis <= 1'b0;
    end else if(dis_en3) begin
        dis <= dis_reg4[0] + dis_reg4[1] + dis_reg4[2] + dis_reg4[3] + dis_reg4[4];
    end
end

// getMin_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        getMin_en <= 1'b0;
    end else begin
        getMin_en <= dis_en5;
    end
end

// minDis
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        minDis <= 10'b0;
    end else if(getMin_en) begin
        if(dis < minDis) begin
            minDis <= dis;
        end
    end else if(event_flag) begin
        minDis <= D;
    end
end

// itemCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        itemCnt <= 8'b0;
    end else if(getMin_en && itemCnt < itemNum-1) begin
        itemCnt <= itemCnt + 1'b1;
    end else if(getMin_en && itemCnt == itemNum-1) begin
        itemCnt <= 8'b0;
    end
end

// minIdx
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        minIdx <= 8'b0;
    end else if(getMin_en) begin
        if(dis < minDis) begin
            minIdx <= itemCnt;
        end
    end else if(event_flag) begin
        minIdx <= 8'b0;
    end
end

// min_done
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        min_done <= 1'b0;
    end else if(getMin_en && itemCnt == itemNum-1) begin
        min_done <= 1'b1;
    end else begin
        min_done <= 1'b0;
    end
end

// isConfident
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        isConfident <= 1'b1;
    end else if(min_done) begin
        if(minDis >= confidThrs[MAX_ITEM_IDX-1-minIdx]) begin
            isConfident <= 1'b0;
        end else begin
            isConfident <= 1'b1;
        end
    end
end

// confident_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        confident_flag <= 1'b0;
    end else if(min_done) begin
        confident_flag <= 1'b1;
    end else begin
        confident_flag <= 1'b0;
    end
end


// items
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        items <= 8'b0;
    end else if(confident_flag) begin
        if(isConfident) begin
            items <= minIdx;
        end else begin
            items <= 8'hFF;
        end     
    end
end

// item_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        item_flag <= 1'b0;
    end else if(confident_flag) begin
        item_flag <= 1'b1;
    end else begin
        item_flag <= 1'b0;
    end
end

// itemNum
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        itemNum <= 8'd7;
    end else if(oracle_flag) begin
        if(oracle_label > itemNum) begin
            itemNum <= oracle_label;
        end
    end
end

// wr_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        wr_addr <= 8'b0;
    end else if(oracle_flag) begin
        wr_addr <= oracle_label;
    end
end

// confidThrs
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        confidThrs <= '{290,280,280,280,275,275,275,0,0,0,0,0,0,0,0,0};
    end else if(oracle_flag) begin
        if(oracle_label > itemNum) begin
            confidThrs[MAX_ITEM_IDX-1-oracle_label] <= 'd275;
        end else begin
            confidThrs[MAX_ITEM_IDX-1-oracle_label] <= confidThrs[MAX_ITEM_IDX-1-oracle_label] + 'd5;
        end
    end
end

// intpHV
generate
    for(i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                intpHV[i] <= 'b0;
            end else if(oracle_flag) begin
                intpHV[i] <= itemSeen[MAX_ITEM_IDX-1-oracle_label] * item_pHV[i] + eventHV[i];
            end
        end
    end
endgenerate

// intreg_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        intreg_flag <= 1'b0;
    end else if(oracle_flag) begin
        intreg_flag <= 1'b1;
    end else begin
        intreg_flag <= 1'b0;
    end
end

// new_pHV
generate
    for(i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                new_pHV[i] <= 1'b0;
            end else if(intreg_flag) begin
                if(new_pHV[i] >= itemSeen[MAX_ITEM_IDX-1-oracle_label]/2+1) begin
                    new_pHV[i] <= 1'b1;
                end else begin
                    new_pHV[i] <= 1'b0;
                end
            end
        end
    end
endgenerate

// wr_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        wr_en <= 1'b0;
    end else if(intreg_flag) begin
        wr_en <= 1'b1;
    end else begin
        wr_en <= 1'b0;
    end
end

// itemSeen
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        itemSeen <= '{4,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0};
    end else if(intreg_flag) begin
        itemSeen[MAX_ITEM_IDX-1-oracle_label] <= itemSeen[MAX_ITEM_IDX-1-oracle_label] + 1'b1;
    end
end

activeAM 
#(
    .Dpl(D)
) activeAM_inst
(
    .sys_clk(sys_clk),
    .rd_addr(rd_addr),
    .wr_addr(wr_addr),
    .wr_en(wr_en),
    .new_pHV(new_pHV),

    .item_pHV(item_pHV)
);

endmodule