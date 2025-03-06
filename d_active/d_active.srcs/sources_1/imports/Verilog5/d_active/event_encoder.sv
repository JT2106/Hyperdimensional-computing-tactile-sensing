`timescale 100ps/100ps
module event_encoder
#(
    parameter D = 'd1000,
    parameter CHAN_NUM = 'd9,
    parameter WLEN = 'd4
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [D-1:0] HV,
    input wire         HV_flag,
    input wire [D-1:0] zpHV,
    input wire [15:0]  pdisps[26:0],
    input wire         flag_z,
    input wire [1:0]   slip_state,
    input wire         slip_flag,

    output reg [D-1:0] eventHV,
    output reg         event_flag
);

reg [D-1:0] contactID;
reg [D-1:0] slipID;
reg         init_en;
reg [3:0]   IM_addr;
reg         iscontact[8:0];
reg         iscontact_flag;
reg [3:0]   contactNum;
reg         contactNum_flag;
reg [D-1:0] cxenHV;
reg         cxen_flag;
reg [D-1:0] contactHV;
reg [3:0]   cn_reg;
reg [2:0]   Wcnt;
reg [D-1:0] HV_win[3:0];
reg [1:0]   slip_win[3:0];
reg         win_flag;
reg         isSlip[3:0];
reg         isSlip_flag;
reg [3:0]   slipCnt;
reg         slipCnt_flag;
reg         slipen_flag1;
reg         slipen_flag2;
reg         slipen_flag3;
reg [D-1:0] slipHV;
reg         slip_done;
reg [1:0]   eint_HD[D-1:0];
reg         int_flag; 

wire [D-1:0] eventID;

genvar i;
integer j;

// IM_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        IM_addr <= 'b0 + 'd12;
    end else if(IM_addr < 'd1 + 'd12) begin
        IM_addr <= IM_addr + 1'b1;
    end
end

// init_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        init_en <= 1'b0;
    end else if(IM_addr == 'd12 && init_en == 1'b0) begin
        init_en <= 1'b1;
    end else if(IM_addr == 'd13 && init_en == 1'b1) begin
        init_en <= 1'b0;
    end
end

// contactID, slipID
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        contactID <= 'b0;
        slipID <= 'b0;
    end else if(init_en && IM_addr == 'd12) begin
        contactID <= eventID;
    end else if(init_en && IM_addr == 'd13) begin
        slipID <= eventID;
    end
end

// iscontact [8:0]
generate
    for (i=0; i<CHAN_NUM; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                iscontact[i] <= 1'b0;
            end else if(flag_z) begin
                if(pdisps[2+3*i] > 1'b0) begin
                    iscontact[i] <= 1'b1;
                end else begin
                    iscontact[i] <= 1'b0;
                end
            end
        end
    end
endgenerate

// iscontact_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        iscontact_flag <= 1'b0;
    end else if(flag_z) begin
        iscontact_flag <= 1'b1;
    end else begin
        iscontact_flag <= 1'b0;
    end
end

// contactNum
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        contactNum <= 4'b0;
    end else if(iscontact_flag) begin
        contactNum <= iscontact[0] + iscontact[1] + iscontact[2] + iscontact[3] +iscontact[4] + iscontact[5] + iscontact[6] + iscontact[7] + iscontact[8];
    end else if(event_flag) begin
        contactNum <= 4'b0;
    end
end

// contactNum_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        contactNum_flag <= 1'b0;
    end else if(iscontact_flag) begin
        contactNum_flag <= 1'b1;
    end else begin
        contactNum_flag <= 1'b0;
    end
end

// cxenHV
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cxenHV <= 'b0;
    end else if(HV_flag) begin
        cxenHV <= ~(HV ^ zpHV);
    end
end

// cxen_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cxen_flag <= 1'b0;
    end else if(HV_flag) begin
        cxen_flag <= 1'b1;
    end else begin
        cxen_flag <= 1'b0;
    end
end

// contactHV
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        contactHV <= 'b0;
    end else if(cxen_flag) begin
        if(contactNum > cn_reg) begin
            if(contactNum == 4'd1) begin
                contactHV <= cxenHV;
            end else begin
                contactHV <= ~(( (contactHV << (contactNum-cn_reg)) | contactHV >> (D-(contactNum-cn_reg)) & ((1'b1 << (contactNum-cn_reg)) - 1'b1) ) ^ cxenHV);
            end
        end
    end
end

// cn_reg (contactNum reg)
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cn_reg <= 4'b0;
    end else if(cxen_flag) begin
        cn_reg <= contactNum;
    end else if(event_flag) begin
        cn_reg <= 4'b0;
    end
end

// Wcnt (counter of the window length for slip event)
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Wcnt <= 3'b0;
    end else if(slip_flag && Wcnt < WLEN) begin
        Wcnt <= Wcnt + 1'b1;
    end
end

// HV_win, slip_win
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(j=0; j<WLEN; j=j+1) begin
            HV_win[j] <= 'b0;
            slip_win[j] <= 'b0;
        end
    end else if(slip_flag && Wcnt < WLEN) begin
        HV_win[Wcnt] <= cxenHV;
        slip_win[Wcnt] <= slip_state;
    end else if(slip_flag && Wcnt == WLEN) begin
        for(j=1; j<WLEN; j=j+1) begin
            HV_win[j-1] <= HV_win[j];
            slip_win[j-1] <= slip_win[j];
        end
        HV_win[WLEN-1] <= cxenHV;
        slip_win[WLEN-1] <= slip_state;
    end
end

// win_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        win_flag <= 1'b0;
    end else if(Wcnt >= WLEN-1 && slip_flag) begin
        win_flag <= 1'b1;
    end else begin
        win_flag <= 1'b0;
    end
end

// isSlip [3:0]
generate
    for (i=0; i<WLEN; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                isSlip[i] <= 1'b0;
            end else if(win_flag) begin
                if(slip_win[i] > 2'd1) begin
                    isSlip[i] <= 1'b1;
                end else begin
                    isSlip[i] <= 1'b0;
                end
            end
        end
    end
endgenerate

// isSlip_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        isSlip_flag <= 1'b0;
    end else if(win_flag) begin
        isSlip_flag <= 1'b1;
    end else begin
        isSlip_flag <= 1'b0;
    end
end

// slipCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slipCnt <= 4'b0;
    end else if(isSlip_flag) begin
        slipCnt <= isSlip[0] + isSlip[1] + isSlip[2] + isSlip[3];
    end else if(event_flag) begin
        slipCnt <= 4'b0;
    end
end

// slipCnt_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slipCnt_flag <= 1'b0;
    end else if(isSlip_flag) begin
        slipCnt_flag <= 1'b1;
    end else begin
        slipCnt_flag <= 1'b0;
    end
end

// slipen_flag1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slipen_flag1 <= 1'b0;
    end else begin
        slipen_flag1 <= slipCnt_flag;
    end
end

// slipen_flag2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slipen_flag2 <= 1'b0;
    end else begin
        slipen_flag2 <= slipen_flag1;
    end
end

// slipen_flag3
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slipen_flag3 <= 1'b0;
    end else begin
        slipen_flag3 <= slipen_flag2;
    end
end

// slipHV
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        if(sys_rst_n == 1'b0) begin
            slipHV <= 'b0;
        end else if(slipCnt_flag) begin
            slipHV <= HV_win[0];
        end else if(slipen_flag1) begin
            slipHV <= ~(({slipHV[0], slipHV[D-1:1]}) ^ HV_win[1]);
        end else if(slipen_flag2) begin
            slipHV <= ~(({slipHV[0], slipHV[D-1:1]}) ^ HV_win[2]);
        end else if(slipen_flag3) begin
            slipHV <= ~(({slipHV[0], slipHV[D-1:1]}) ^ HV_win[3]);
        end
    end
end

// slip_done
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slip_done <= 1'b0;
    end else if(slipen_flag3) begin
        slip_done <= 1'b1;
    end else begin
        slip_done <= 1'b0;
    end
end

// eint_HD
generate
    for (i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                eint_HD[i] <= 1'b0;
            end else if(slip_done) begin
                eint_HD[i] <= ~(contactHV[i] ^ contactID[i]) + ~(slipHV[i] ^ slipID[i]) + ~(contactHV[i] ^ contactID[i] ^ slipHV[i] ^ slipID[i]);
            end
        end
    end
endgenerate

// int_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        int_flag <= 1'b0;
    end else if(slip_done) begin
        int_flag <= 1'b1;
    end else begin
        int_flag <= 1'b0;
    end
end

// eventHV
generate
    for (i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                eventHV[i] <= 1'b0;
            end else if(int_flag) begin
                if(eint_HD[i] >= 2'd2) begin
                    eventHV[i] <= 1'b1;
                end else begin
                    eventHV[i] <= 1'b0;
                end
            end
        end
    end
endgenerate

// event_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        event_flag <= 1'b0;
    end else if(int_flag) begin
        event_flag <= 1'b1;
    end else begin
        event_flag <= 1'b0;
    end
end

IM
#(
    .Dpl(D)
) IM_event_inst
(
    .sys_clk(sys_clk),
    .chan_addr(IM_addr),
    .chanHV(eventID)
);

endmodule

