`timescale 100ps/100ps
module gsHD_encoder
#(
    parameter D = 'd1000,
    parameter CHAN_NUM = 'd9,
    parameter NE_NUM = 'd21
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [7:0]   rawKeys[8:0],
    input wire         flag_in,

    output reg [D-1:0] gsbin_HD,
    output reg         gsbin_flag
);

localparam [3:0] GRAPH[20:0][1:0] = '{'{0,0},'{2,2},'{6,6},'{8,8},
                                      '{0,2},'{0,6},'{0,8},'{2,6},'{2,8},'{6,8},
                                      '{1,1},'{3,3},'{5,5},'{7,7},
                                      '{1,3},'{1,5},'{1,7},'{3,5},'{3,7},'{5,7},
                                      '{4,4}};

reg [7:0]   keys[8:0];
reg         spa_en;
reg [3:0]   CHcnt;
reg         graph_en;
reg [7:0]   NEcnt;
reg [3:0]   chan_addr;
reg [4:0]   fea_addr1;
reg [4:0]   fea_addr2;
reg         bind_en;
reg [7:0]   gs_index;
reg         IMrd_flag;
reg [4:0]   gint_HD[D-1:0];
reg [9:0]   sint_HD[D-1:0];
reg         gsint_flag;

wire [D-1:0] chanHV;
wire [D-1:0] feaHV1;
wire [D-1:0] feaHV2;

genvar i;

// keys
generate
    for(i=0; i<9; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                keys[i] <= 8'b0;
            end else if(flag_in) begin
                case(rawKeys[i][7:3])
                    5'b0_0000: begin
                        if(rawKeys[i][2])
                            keys[i] <= 'd1;
                        else
                            keys[i] <= 'd0;
                    end
                    5'b0_0001: keys[i] <= 'd2;
                    5'b0_0010: keys[i] <= 'd3;
                    5'b0_0011: keys[i] <= 'd4;
                    5'b0_0100: begin
                        if(rawKeys[i][2])
                            keys[i] <= 'd6;
                        else
                            keys[i] <= 'd5;
                    end
                    5'b0_0101: keys[i] <= 'd7;
                    5'b0_0110: keys[i] <= 'd8;
                    5'b0_0111: keys[i] <= 'd9;
                    5'b0_1000: begin
                        if(rawKeys[i][2])
                            keys[i] <= 'd11;
                        else
                            keys[i] <= 'd10;
                    end
                    5'b0_1001: keys[i] <= 'd12;
                    5'b0_1010: keys[i] <= 'd13;
                    5'b0_1011: keys[i] <= 'd14;
                    5'b0_1100: begin
                        if(rawKeys[i][2])
                            keys[i] <= 'd16;
                        else
                            keys[i] <= 'd15;
                    end
                    5'b0_1101: keys[i] <= 'd17;
                    5'b0_1110: keys[i] <= 'd18;
                    5'b0_1111: keys[i] <= 'd19;
                    5'b1_0000: keys[i] <= 'd20;
                    default  : keys[i] <= 'd20;
                endcase
            end
        end
    end
endgenerate

// spa_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        spa_en <= 1'b0;
    end else if(flag_in) begin
        spa_en <= 1'b1;
    end else if(CHcnt == CHAN_NUM-1) begin
        spa_en <= 1'b0;
    end
end

// CHcnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        CHcnt <= 4'b0;
    end else if(flag_in || (spa_en && CHcnt == CHAN_NUM-1)) begin
        CHcnt <= 4'b0;
    end else if(spa_en) begin
        CHcnt <= CHcnt + 1'b1;
    end
end

// graph_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        graph_en <= 1'b0;
    end else if(CHcnt == CHAN_NUM-1) begin
        graph_en <= 1'b1;
    end else if(NEcnt == NE_NUM-1) begin
        graph_en <= 1'b0;
    end
end

// NEcnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        NEcnt <= 8'b0;
    end else if(flag_in || (graph_en && NEcnt == NE_NUM-1)) begin
        NEcnt <= 8'b0;
    end else if(graph_en) begin
        NEcnt <= NEcnt + 1'b1;
    end
end

// chan_addr, fea_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        chan_addr <= 'b0;
        fea_addr1 <= 'b0;
        fea_addr2 <= 'b0;
    end else if(spa_en) begin
        chan_addr <= CHcnt;
        fea_addr1 <= keys[CHcnt];
    end else if(graph_en) begin
        if(NEcnt < 'd10) begin
            chan_addr <= CHAN_NUM;
            if(NEcnt < 'd4) begin
                fea_addr1 <= keys[GRAPH[NE_NUM-1-NEcnt][0]];
            end else begin
                fea_addr1 <= keys[GRAPH[NE_NUM-1-NEcnt][0]];
                fea_addr2 <= keys[GRAPH[NE_NUM-1-NEcnt][1]];
            end
        end else if(NEcnt >= 'd10 && NEcnt < 'd20) begin
            chan_addr <= CHAN_NUM + 'd1;
            if(NEcnt < 'd14) begin
                fea_addr1 <= keys[GRAPH[NE_NUM-1-NEcnt][0]];
            end else begin
                fea_addr1 <= keys[GRAPH[NE_NUM-1-NEcnt][0]];
                fea_addr2 <= keys[GRAPH[NE_NUM-1-NEcnt][1]];
            end
        end else begin
            chan_addr <= CHAN_NUM + 'd2;
            fea_addr1 <= keys[GRAPH[NE_NUM-1-NEcnt][0]];
        end
    end
end

// bind_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        bind_en <= 1'b0;
    end else if (spa_en || graph_en) begin 
        bind_en <= 1'b1;
    end else begin
        bind_en <= 1'b0;
    end
end

// gs_index
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gs_index <= 8'b0;
    end else if(flag_in) begin
        gs_index <= CHAN_NUM + NE_NUM - 1;
    end else if(bind_en) begin
        if(gs_index == CHAN_NUM + NE_NUM - 1) begin
            gs_index <= 8'b0;
        end else begin
            gs_index <= gs_index + 1'b1;
        end
    end
end

// IMrd_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        IMrd_flag <= 1'b0;
    end else begin
        IMrd_flag <= bind_en;
    end
end

// sint_HD
generate
    for(i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                sint_HD[i] <= 1'b0;
            end else if(IMrd_flag) begin
                if(gs_index < 'd9) begin
                    sint_HD[i] <= sint_HD[i] + {9'b0, ~(chanHV[i] ^ feaHV1[i])};
                end
            end else if(flag_in) begin
                sint_HD[i] <= 1'b0;
            end
        end
    end
endgenerate

// gint_HD
generate
    for(i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                gint_HD[i] <= 1'b0;
            end else if(IMrd_flag) begin
                if((gs_index >= 'd13 && gs_index <= 'd18) || (gs_index >= 'd23 && gs_index <= 'd28)) begin
                    gint_HD[i] <= gint_HD[i] + {4'b0, (chanHV[i] ^ feaHV1[i] ^ feaHV2[i])};
                end else if((gs_index >= 'd10 && gs_index <= 'd12) || (gs_index >= 'd19 && gs_index <= 'd22) || gs_index == 'd29) begin
                    gint_HD[i] <= gint_HD[i] + {4'b0, ~(chanHV[i] ^ feaHV1[i])};
                end else if(gs_index == 'd9) begin
                    gint_HD[i] <=  {4'b0, ~(chanHV[i] ^ feaHV1[i])};
                end
            end else if(flag_in) begin
                gint_HD[i] <= 1'b0;
            end
        end
    end
endgenerate

// gsint_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gsint_flag <= 1'b0;
    end else if(gs_index == CHAN_NUM + NE_NUM -1 && IMrd_flag) begin
        gsint_flag <= 1'b1;
    end else begin
        gsint_flag <= 1'b0;
    end
end

// gsbin_HD
generate
    for(i=0; i<D; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                gsbin_HD[i] <= 1'b0;
            end else if(gsint_flag) begin
                if((gint_HD[i] + sint_HD[i]) < (30/2 + 1)) begin
                    gsbin_HD[i] <= 1'b0;
                end else begin
                    gsbin_HD[i] <= 1'b1;
                end
            end
        end
    end
endgenerate

// gsbin_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gsbin_flag <= 'b0;
    end else if(gsint_flag) begin
        gsbin_flag <= gsint_flag;
    end else begin
        gsbin_flag <= 1'b0;
    end
end

IM
#(
    .Dpl(D)
) IM_inst
(
    .sys_clk(sys_clk),
    .chan_addr(chan_addr),
    .chanHV(chanHV)
);

CIM
#(
    .Dpl(D)
) CIM_inst
(
    .sys_clk(sys_clk),
    .fea_addr1(fea_addr1),
    .feaHV1(feaHV1),
    .fea_addr2(fea_addr2),
    .feaHV2(feaHV2)
);

endmodule