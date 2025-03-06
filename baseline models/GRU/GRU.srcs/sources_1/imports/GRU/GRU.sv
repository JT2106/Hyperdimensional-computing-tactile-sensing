`timescale 100ps/100ps
module GRU 
#(
    parameter N = 'd15,
    parameter INPUT_SIZE = 'd9,
    parameter HIDDEN_UNITS = 'd8,
    parameter NODE_NUM_L0 = INPUT_SIZE + HIDDEN_UNITS,
    parameter NODE_NUM_L1 = HIDDEN_UNITS,
    parameter NODE_NUM_L2 = 'd3,
    parameter NODE_NUM_MAX = NODE_NUM_L1 > NODE_NUM_L2 ? NODE_NUM_L1 : NODE_NUM_L2
) 
(
    input wire       sys_clk,
    input wire       sys_rst_n,
    input wire [7:0] rawKeys[8:0][N-1:0],
    input wire       flag_in,

    output reg [1:0] slip_state,
    output reg       slip_flag
);

reg [31:0] H[HIDDEN_UNITS-1:0];
reg        Hupdate_flag;
reg        Hupdate_flag_reg;
reg [3:0]  Ncnt;   
reg [31:0] L0_inputs[NODE_NUM_L0-1:0];
reg        L0_in_flag;
reg [4:0]  addr_RZ;
reg        RZ_flag;
reg [4:0]  L0_Cnt;
//reg [31:0] L0_in;
reg [31:0] multin1_w1reg[HIDDEN_UNITS-1:0];
reg [31:0] multin2_w1reg[HIDDEN_UNITS-1:0];
reg [31:0] multin1_w2reg[HIDDEN_UNITS-1:0];
reg [31:0] multin2_w2reg[HIDDEN_UNITS-1:0];
reg        RZ_flag_reg;
reg        w_flag1;
reg        w_flag2;
reg        mo_flag1_reg;
reg        mo_flag2_reg;
reg [31:0] accu_in1[NODE_NUM_MAX-1:0];
reg [31:0] accu_in2[NODE_NUM_MAX-1:0];
reg        ai_flag1[NODE_NUM_MAX-1:0];
reg        ai_flag2[NODE_NUM_MAX-1:0];
reg        last_flag1[NODE_NUM_MAX-1:0];
reg        last_flag2[NODE_NUM_MAX-1:0];
reg [31:0] exp_in1[NODE_NUM_MAX-1:0];
reg [31:0] exp_in2[NODE_NUM_MAX-1:0];
reg        ei_flag1[NODE_NUM_MAX-1:0];
reg        ei_flag2[NODE_NUM_MAX-1:0];
reg [31:0] sub_ain1[NODE_NUM_MAX-1:0];
reg [31:0] sub_bin1[NODE_NUM_MAX-1:0];
reg [31:0] sub_ain2[NODE_NUM_MAX-1:0];
reg [31:0] sub_bin2[NODE_NUM_MAX-1:0];
reg        si_flag1[NODE_NUM_MAX-1:0];
reg        si_flag2[NODE_NUM_MAX-1:0];
reg [31:0] dividend1[NODE_NUM_MAX-1:0];
reg [31:0] dividend2[NODE_NUM_MAX-1:0];
reg [31:0] divisor1[NODE_NUM_MAX-1:0];
reg [31:0] divisor2[NODE_NUM_MAX-1:0];
reg        di_flag1[NODE_NUM_MAX-1:0];
reg        di_flag2[NODE_NUM_MAX-1:0];
reg [31:0] R[HIDDEN_UNITS-1:0];
reg [31:0] Z[HIDDEN_UNITS-1:0];
reg        sgmd_flag;
reg [31:0] HmR[HIDDEN_UNITS-1:0];
reg        HmR_flag;
reg [31:0] om_Z[HIDDEN_UNITS-1:0]; // 1-Z
reg        omZ_flag;
reg [31:0] add_ina[NODE_NUM_MAX-1:0];
reg [31:0] add_inb[NODE_NUM_MAX-1:0];
reg        adi_flag[NODE_NUM_MAX-1:0];
reg [31:0] H_tilde[HIDDEN_UNITS-1:0];
reg        H_tilde_flag;
reg [3:0]  addrL2;
reg        L2_flag;
reg [3:0]  L2_Cnt;
reg        L2_flag_reg;
reg [1:0]  softmaxCnt;
reg [1:0]  expsoftCnt;
reg [31:0] expsoft[NODE_NUM_MAX-1:0];
reg [31:0] compare_in1;
reg [31:0] compare_in2;
reg        compare_flag;
reg [1:0]  compareCnt;
reg [1:0]  compareCode;
reg        cc_flag;
reg [3:0]  pCnt;

wire [31:0] features[INPUT_SIZE-1:0][N-1:0];
wire        fea_flag[INPUT_SIZE-1:0][N-1:0];
wire [31:0] paraR[HIDDEN_UNITS-1:0];
wire [31:0] paraZ[HIDDEN_UNITS-1:0];
wire [31:0] paraH_tilde[HIDDEN_UNITS-1:0];
wire [31:0] mult_out1[NODE_NUM_MAX-1:0];
wire        mo_flag1[NODE_NUM_MAX-1:0];
wire [31:0] mult_out2[NODE_NUM_MAX-1:0];
wire        mo_flag2[NODE_NUM_MAX-1:0];
wire [31:0] accu_out1[NODE_NUM_MAX-1:0];
wire        accu_valid1[NODE_NUM_MAX-1:0];
wire        ao_flag1[NODE_NUM_MAX-1:0];
wire [31:0] accu_out2[NODE_NUM_MAX-1:0];
wire        accu_valid2[NODE_NUM_MAX-1:0];
wire        ao_flag2[NODE_NUM_MAX-1:0];
wire [31:0] exp_out1[NODE_NUM_MAX-1:0];
wire        eo_flag1[NODE_NUM_MAX-1:0];
wire [31:0] exp_out2[NODE_NUM_MAX-1:0];
wire        eo_flag2[NODE_NUM_MAX-1:0];
wire [31:0] sub_out1[NODE_NUM_MAX-1:0];
wire        so_flag1[NODE_NUM_MAX-1:0];
wire [31:0] sub_out2[NODE_NUM_MAX-1:0];
wire        so_flag2[NODE_NUM_MAX-1:0];
wire [31:0] div_out1[NODE_NUM_MAX-1:0];
wire        do_flag1[NODE_NUM_MAX-1:0];
wire [31:0] div_out2[NODE_NUM_MAX-1:0];
wire        do_flag2[NODE_NUM_MAX-1:0];
wire [31:0] add_out[NODE_NUM_MAX-1:0];
wire        ado_flag[NODE_NUM_MAX-1:0];
wire [31:0] paraL2[NODE_NUM_MAX-1:0];
wire [7:0]  compare_out;
wire        co_flag;

genvar i;

// H
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                H[i] <= 32'b0;
            end else if(flag_in) begin
                H[i] <= 32'b0;
            end else if(ado_flag[i] && pCnt == 4'd4) begin
                H[i] <= add_out[i];
            end
        end
    end
endgenerate

// Hupdate_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Hupdate_flag <= 1'b0;
    end else if(ado_flag[0] && pCnt == 4'd4) begin
        Hupdate_flag <= 1'b1;
    end else begin
        Hupdate_flag <= 1'b0;
    end
end

// Hupdate_flag_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Hupdate_flag_reg <= 1'b0;
    end else begin
        Hupdate_flag_reg <= Hupdate_flag;
    end
end

// Ncnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Ncnt <= 4'b0;
    end else if(Hupdate_flag) begin
        Ncnt <= Ncnt + 1'b1;
    end else if(flag_in) begin
        Ncnt <= 4'b0;
    end
end

// L0_inputs[16:8]
generate
    for(i=HIDDEN_UNITS; i<NODE_NUM_L0; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                L0_inputs[i] <= 32'b0;
            end else if(fea_flag[i-HIDDEN_UNITS][0] || (Hupdate_flag_reg && Ncnt < N)) begin
                L0_inputs[i] <= features[i-HIDDEN_UNITS][Ncnt];
            end
        end
    end
endgenerate
// L0_inputs[7:0]
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                L0_inputs[i] <= 32'b0;
            end else if(fea_flag[0][0] || (Hupdate_flag_reg && Ncnt < N)) begin
                L0_inputs[i] <= H[i];
            end else if(omZ_flag) begin
                L0_inputs[i] <= HmR[i];
            end
        end
    end
endgenerate

// L0_in_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        L0_in_flag <= 1'b0;
    end else if(fea_flag[0][0] || omZ_flag || (Hupdate_flag_reg && Ncnt < N)) begin
        L0_in_flag <= 1'b1;
    end else begin
        L0_in_flag <= 1'b0;
    end
end

// addr_RZ 
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        addr_RZ <= 5'b0;
    end else if(L0_in_flag) begin
        addr_RZ <= 5'b1;
    end else if(addr_RZ > 1'b0 && addr_RZ < NODE_NUM_L0) begin
        addr_RZ <= addr_RZ + 1'b1;
    end else if(addr_RZ == NODE_NUM_L0) begin
        addr_RZ <= 5'b0;
    end
end

// RZ_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        RZ_flag <= 1'b0;
    end else if(L0_in_flag) begin
        RZ_flag <= 1'b1;
    end else if(RZ_flag == 1'b1 && addr_RZ == 1'b0) begin
        RZ_flag <= 1'b0;
    end
end

// L0_Cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        L0_Cnt <= 5'b0;
    end else if(RZ_flag &&  L0_Cnt < NODE_NUM_L0-1) begin
        L0_Cnt <= L0_Cnt + 1'b1;
    end else if(flag_in || (Hupdate_flag && Ncnt < N)) begin
        L0_Cnt <= 1'b0;
    end
end

// // L0_in 
// always @(posedge sys_clk or negedge sys_rst_n) begin
//     if(sys_rst_n == 1'b0) begin
//         L0_in <= 32'b0;
//     end else if(RZ_flag) begin
//         L0_in <= L0_inputs[L0_Cnt];
//     end
// end

// multin1_w1reg
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                multin1_w1reg[i] <= 32'b0;
            end else if(RZ_flag) begin
                multin1_w1reg[i] <= L0_inputs[L0_Cnt];
            end else if(sgmd_flag) begin
                multin1_w1reg[i] <= R[i];
            end else if(H_tilde_flag) begin
                multin1_w1reg[i] <= Z[i];
            end else if(L2_flag) begin
                multin1_w1reg[i] <= H[L2_Cnt];
            end
        end
    end
endgenerate
// multin2_w1reg
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                multin2_w1reg[i] <= 32'b0;
            end else if(RZ_flag && pCnt == 4'd1) begin
                multin2_w1reg[i] <= L0_inputs[L0_Cnt];
            end else if(H_tilde_flag) begin
                multin2_w1reg[i] <= om_Z[i];
            end
        end
    end
endgenerate

// multin1_w2reg
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                multin1_w2reg[i] <= 32'b0;
            end else if(RZ_flag && pCnt == 4'd1) begin
                multin1_w2reg[i] <= paraR[i];
            end else if(sgmd_flag || H_tilde_flag) begin
                multin1_w2reg[i] <= H[i];
            end else if(RZ_flag && pCnt == 4'd3) begin
                multin1_w2reg[i] <= paraH_tilde[i];
            end else if(L2_flag) begin
                multin1_w2reg[i] <= paraL2[i];
            end
        end
    end
endgenerate
// multin2_w2reg
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                multin2_w2reg[i] <= 32'b0;
            end else if(RZ_flag && pCnt == 4'd1) begin
                multin2_w2reg[i] <= paraZ[i];
            end else if(H_tilde_flag) begin
                 multin2_w2reg[i] <= H_tilde[i];
            end
        end
    end
endgenerate

// RZ_flag_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        RZ_flag_reg <= 1'b0;
    end else begin
        RZ_flag_reg <= RZ_flag;
    end
end

// w_flag1 
always @(RZ_flag, RZ_flag_reg, L2_flag, L2_flag_reg) begin
    if(pCnt == 4'd1 || pCnt == 4'd3) begin
        w_flag1 = RZ_flag & RZ_flag_reg;
    end else if(pCnt == 4'd5) begin
        w_flag1 = L2_flag & L2_flag_reg;
    end 
end
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin 
        w_flag1 <= 1'b0;
    end else if(sgmd_flag && pCnt == 4'd2) begin
        w_flag1 <= sgmd_flag;
    end else if(H_tilde_flag && pCnt == 4'd4) begin
        w_flag1 <= H_tilde_flag;
    end else if(pCnt == 4'd2 || pCnt == 4'd4) begin
        w_flag1 = 1'b0;
    end
end
// w_flag2
always @(RZ_flag, RZ_flag_reg) begin
    if(pCnt == 4'd1) begin
        w_flag2 = RZ_flag & RZ_flag_reg;
    end
end
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin 
        w_flag2 <= 1'b0;
    end else if(H_tilde_flag && pCnt == 4'd4) begin
        w_flag2 <= H_tilde_flag;
    end else if(pCnt == 4'd4) begin
        w_flag2 <= 1'b0;
    end
end

// mo_flag1_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        mo_flag1_reg <= 1'b0;
    end else begin
        mo_flag1_reg <= mo_flag1[0];
    end
end
// mo_flag2_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        mo_flag2_reg <= 1'b0;
    end else begin
        mo_flag2_reg <= mo_flag2[0];
    end
end

// accu_in1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                accu_in1[i] <= 32'b0;
            end else if((pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5) && mo_flag1[i]) begin
                accu_in1[i] <= mult_out1[i];
            end else if((pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5) && mo_flag1[i] == 1'b0 && mo_flag1_reg) begin
                accu_in1[i] <= multin1_w2reg[i];
            end
        end
    end
endgenerate
// accu_in2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                accu_in2[i] <= 32'b0;
            end else if(pCnt == 4'd1 && mo_flag2[0]) begin
                accu_in2[i] <= mult_out2[i];
            end else if(pCnt == 4'd1 && mo_flag2[0] == 1'b0 && mo_flag2_reg) begin
                accu_in2[i] <= multin2_w2reg[i];
            end
        end
    end
endgenerate

// ai_flag1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                ai_flag1[i] <= 1'b0;
            end else if((pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5) && mo_flag1[0] && mo_flag1_reg == 1'b0) begin
                ai_flag1[i] <= 1'b1;
            end else if((pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5) && mo_flag1[0] == 1'b0 && mo_flag1_reg == 1'b0) begin
                ai_flag1[i] <= 1'b0;
            end
        end
    end
endgenerate
// ai_flag2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                ai_flag2[i] <= 1'b0;
            end else if(pCnt == 4'd1 && mo_flag2[0] && mo_flag2_reg == 1'b0) begin
                ai_flag2[i] <= 1'b1;
            end else if(pCnt == 4'd1 && mo_flag2[0] == 1'b0 && mo_flag2_reg == 1'b0) begin
                ai_flag2[i] <= 1'b0;
            end
        end
    end
endgenerate

// last_flag1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                last_flag1[i] <= 1'b0;
            end else if((pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5) && mo_flag1[0] == 1'b0 && mo_flag1_reg) begin
                last_flag1[i] <= 1'b1;
            end else if(pCnt != 4'd6) begin
                last_flag1[i] <= 1'b0;
            end
        end
    end
endgenerate
// last_flag2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                last_flag2[i] <= 1'b0;
            end else if(pCnt == 4'd1 && mo_flag2[0] == 1'b0 && mo_flag2_reg) begin
                last_flag2[i] <= 1'b1;
            end else if(pCnt != 4'd6) begin
                last_flag2[i] <= 1'b0;
            end
        end
    end
endgenerate

// exp_in1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                exp_in1[i] <= 32'b0;
            end else if(ao_flag1[i] && pCnt == 4'd1) begin
                exp_in1[i] <= {1'b1, accu_out1[i][30:0]};
            end else if(ao_flag1[i] && (pCnt == 4'd3 || pCnt == 4'd5)) begin
                exp_in1[i] <= accu_out1[i];
            end
        end
    end
endgenerate
// exp_in2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                exp_in2[i] <= 32'b0;
            end else if((ao_flag2[i] && pCnt == 4'd1) || (ao_flag1[i] && pCnt == 4'd3)) begin
                exp_in2[i] <= {1'b1, accu_out2[i][30:0]};
            end
        end
    end
endgenerate

// ei_flag1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                ei_flag1[i] <= 1'b0;
            end else if(ao_flag1[i] && (pCnt == 4'd1 || pCnt == 4'd3 || pCnt == 4'd5 || pCnt == 4'd6)) begin
                ei_flag1[i] <= 1'b1;
            end else begin
                ei_flag1[i] <= 1'b0;
            end
        end
    end
endgenerate
// ei_flag2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                ei_flag2[i] <= 1'b0;
            end else if((ao_flag2[i] && pCnt == 4'd1) || (ao_flag1[i] && pCnt == 4'd3)) begin
                ei_flag2[i] <= 1'b1;
            end else begin
                ei_flag2[i] <= 1'b0;
            end
        end
    end
endgenerate

// sub_ain1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                sub_ain1[i] <= 32'b0;
            end else if((eo_flag1[i] && pCnt == 4'd1) || sgmd_flag) begin
                sub_ain1[i] <= 32'h3F80_0000; // 1
            end else if(eo_flag1[i] && pCnt == 4'd3) begin
                sub_ain1[i] <= exp_out1[i];
            end
        end
    end
endgenerate
// sub_ain2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                sub_ain2[i] <= 32'b0;
            end else if(eo_flag2[i] && pCnt == 4'd1) begin
                sub_ain2[i] <= 32'h3F80_0000; // 1
            end
        end
    end
endgenerate

// sub_bin1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                sub_bin1[i] <= 32'b0;
            end else if(eo_flag1[i] && pCnt == 4'd1) begin
                sub_bin1[i] <= exp_out1[i];
            end else if(sgmd_flag) begin
                sub_bin1[i] <= Z[i];
            end else if(eo_flag2[i] && pCnt == 4'd3) begin
                sub_bin1[i] <= exp_out2[i];
            end
        end
    end
endgenerate
// sub_bin2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                sub_bin2[i] <= 32'b0;
            end else if(eo_flag2[i] && pCnt == 4'd1) begin
                sub_bin2[i] <= exp_out2[i];
            end
        end
    end
endgenerate

// si_flag1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                si_flag1[i] <= 1'b0;
            end else if((eo_flag1[i] && (pCnt == 4'd1 || pCnt == 4'd3)) || sgmd_flag) begin
                si_flag1[i] <= 1'b1;
            end else begin
                si_flag1[i] <= 1'b0;
            end
        end
    end
endgenerate
// si_flag2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                si_flag2[i] <= 1'b0;
            end else if(eo_flag2[i] && pCnt == 4'd1) begin
                si_flag2[i] <= 1'b1;
            end else begin
                si_flag2[i] <= 1'b0;
            end
        end
    end
endgenerate

// add_ina
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                add_ina[i] <= 32'b0;
            end else if(eo_flag1[i] && pCnt == 4'd3) begin
                add_ina[i] <= exp_out1[i];
            end else if(mo_flag1[i] && pCnt == 4'd4) begin
                add_ina[i] <= mult_out1[i];
            end
        end
    end
endgenerate
// add_inb
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                add_inb[i] <= 32'b0;
            end else if(eo_flag2[i] && pCnt == 4'd3) begin
                add_inb[i] <= exp_out2[i];
            end else if(mo_flag2[i] && pCnt == 4'd4) begin
                add_inb[i] <= mult_out2[i];
            end
        end
    end
endgenerate

// adi_flag
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                adi_flag[i] <= 1'b0;
            end else if((eo_flag1[i] && pCnt == 4'd3) || (mo_flag1[i] && pCnt == 4'd4)) begin
                adi_flag[i] <= 1'b1;
            end else begin
                adi_flag[i] <= 1'b0;
            end
        end
    end
endgenerate

// dividend1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dividend1[i] <= 32'b0;
            end else if(so_flag1[i] && pCnt == 4'd1) begin
                dividend1[i] <= 32'h3F80_0000; // 1
            end else if(so_flag1[i] && pCnt == 4'd3) begin
                dividend1[i] <= sub_out1[i];
            end else if(ao_flag1[0] && pCnt == 4'd6) begin
                dividend1[i] <= expsoft[i];
            end
        end
    end
endgenerate
// dividend2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                dividend2[i] <= 32'b0;
            end else if(so_flag2[i] && pCnt == 4'd1) begin
                dividend2[i] <= 32'h3F80_0000; // 1
            end
        end
    end
endgenerate

// divisor1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                divisor1[i] <= 32'b0;
            end else if(so_flag1[i] && pCnt == 4'd1) begin
                divisor1[i] <= sub_out1[i];
            end else if(ado_flag[i] && pCnt == 4'd3) begin
                divisor1[i] <= add_out[i];
            end else if(ao_flag1[0] && pCnt == 4'd6) begin
                divisor1[i] <= accu_out1[0];
            end
        end
    end
endgenerate
// divisor2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                divisor2[i] <= 32'b0;
            end else if(so_flag2[i] && pCnt == 4'd1) begin
                divisor2[i] <= sub_out2[i];
            end
        end
    end
endgenerate

// di_flag1
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                di_flag1[i] <= 1'b0;
            end else if((so_flag1[i] && (pCnt == 4'd1 || pCnt == 4'd3)) || (ao_flag1[0] && pCnt == 4'd6)) begin
                di_flag1[i] <= 1'b1;
            end else begin
                di_flag1[i] <= 1'b0;
            end
        end
    end
endgenerate
// di_flag2
generate
    for(i=0; i<NODE_NUM_MAX; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                di_flag2[i] <= 1'b0;
            end else if(so_flag2[i] && pCnt == 4'd1) begin
                di_flag2[i] <= 1'b1;
            end else begin
                di_flag2[i] <= 1'b0;
            end
        end
    end
endgenerate
 
 // R
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                R[i] <= 32'b0;
            end else if(do_flag1[i] && pCnt == 4'd1) begin
                R[i] <= div_out1[i];
            end
        end
    end
endgenerate
 // Z
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                Z[i] <= 32'b0;
            end else if(do_flag2[i] && pCnt == 4'd1) begin
                Z[i] <= div_out2[i];
            end
        end
    end
endgenerate

// sgmd_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        sgmd_flag <= 1'b0;
    end else if(do_flag1[0] && pCnt == 4'd1) begin
        sgmd_flag <= 1'b1;
    end else begin
        sgmd_flag <= 1'b0;
    end
end

// HmR
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                HmR[i] <= 32'b0;
            end else if(mo_flag1[i] && pCnt == 4'd2) begin
                HmR[i] <= mult_out1[i];
            end
        end
    end
endgenerate

// HmR_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HmR_flag <= 1'b0;
    end else if(mo_flag1[0] && pCnt == 4'd2) begin
        HmR_flag <= 1'b1;
    end else begin
        HmR_flag <= 1'b0;
    end
end

// om_Z
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                om_Z[i] <= 32'b0;
            end else if(so_flag1[i] && pCnt == 4'd2) begin
                om_Z[i] <= mult_out1[i];
            end
        end
    end
endgenerate

// omZ_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        omZ_flag <= 1'b0;
    end else if(so_flag1[0] && pCnt == 4'd2) begin
        omZ_flag <= 1'b1;
    end else begin
        omZ_flag <= 1'b0;
    end
end

// H_tilde
generate
    for(i=0; i<HIDDEN_UNITS; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                H_tilde[i] <= 32'b0;
            end else if(do_flag1[i] && pCnt == 4'd3) begin
                H_tilde[i] <= div_out1[i];
            end
        end
    end
endgenerate

// H_tilde_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        H_tilde_flag <= 1'b0;
    end else if(do_flag1[0] && pCnt == 4'd3) begin
        H_tilde_flag <= 1'b1;
    end else begin
        H_tilde_flag <= 1'b0;
    end
end

// addrL2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        addrL2 <= 4'b0;
    end else if(Hupdate_flag && Ncnt == N-1) begin
        addrL2 <= 5'b1;
    end else if(addrL2 > 1'b0 && addrL2 < NODE_NUM_L1) begin
        addrL2 <= addrL2 + 1'b1;
    end else if(addrL2 == NODE_NUM_L1) begin
        addrL2 <= 4'b0;
    end
end

// L2_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        L2_flag <= 1'b0;
    end else if(Hupdate_flag && Ncnt == N-1) begin
        L2_flag <= 1'b1;
    end else if(L2_flag == 1'b1 && addrL2 == 1'b0) begin
        L2_flag <= 1'b0;
    end
end

// L2_Cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        L2_Cnt <= 4'b0;
    end else if(L2_flag && L2_Cnt < NODE_NUM_L1-1) begin
        L2_Cnt <= L2_Cnt + 1'b1;
    end else if(flag_in || (Hupdate_flag && Ncnt == N-1)) begin
        L2_Cnt <= 1'b0;
    end
end

// L2_flag_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        L2_flag_reg <= 1'b0;
    end else begin
        L2_flag_reg <= L2_flag;
    end
end

// softmaxCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        softmaxCnt <= 2'b0;
    end else if(eo_flag1[0] && pCnt == 4'd6) begin
        softmaxCnt <= 1'b1;
    end else if(softmaxCnt > 1'b0 && softmaxCnt < NODE_NUM_L2-1) begin
        softmaxCnt <= softmaxCnt + 1'b1;
    end else if(softmaxCnt == NODE_NUM_L2-1) begin
        softmaxCnt <= 2'b0;
    end
end

// ai_flag1[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        ai_flag1[0] <= 1'b0;
    end else if(eo_flag1[0] && pCnt == 4'd6) begin
        ai_flag1[0] <= 1'b1;
    end else if(ai_flag1[0] && softmaxCnt == 2'b0 && pCnt == 4'd6) begin
        ai_flag1[0] <= 1'b0;
    end
end

// accu_in1[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        accu_in1[0] <= 32'b0;
    end else if(pCnt == 4'd6) begin
        accu_in1[0] <= exp_out1[softmaxCnt];
    end
end

// last_flag1[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        last_flag1[0] <= 1'b0;
    end else if(ai_flag1[0] && softmaxCnt == NODE_NUM_L2-1 && pCnt == 4'd6) begin
        last_flag1[0] <= 1'b1;
    end else if(pCnt == 4'd6) begin
        last_flag1[0] <= 1'b0;
    end
end

// expsoftCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        expsoftCnt <= 2'b0;
    end else begin
        expsoftCnt <= softmaxCnt;
    end
end

// expsoft
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        expsoft[0] <= 32'b0;
        expsoft[1] <= 32'b0;
        expsoft[2] <= 32'b0;
    end else if(pCnt == 4'd6 && ai_flag1[0]) begin
        expsoft[expsoftCnt] <= accu_in1[0];
    end
end

// compare_in1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_in1 <= 32'b0;
    end else if(do_flag1[0] && pCnt == 4'd6) begin
        compare_in1 <= div_out1[0];
    end else if(compareCode[0] == 1'b0 && co_flag && compareCnt == 2'd0) begin
        compare_in1 <= div_out1[2];
    end
end

// compare_in2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_in2 <= 32'b0;
    end else if(do_flag1[0] && pCnt == 4'd6) begin
        compare_in2 <= div_out1[1];
    end else if(compareCode[0] == 1'b1 && co_flag && compareCnt == 2'd0) begin
        compare_in2 <= div_out1[2];
    end
end

// compare_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_flag <= 1'b0;
    end else if((do_flag1[0] && pCnt == 4'd6) || (co_flag && compareCnt == 2'd0)) begin
        compare_flag <= 1'b1;
    end else begin
        compare_flag <= 1'b0;
    end
end

// compareCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compareCnt <= 2'b0;
    end else if(co_flag) begin
        compareCnt <= compareCnt + 1'b1;
    end else if(slip_flag) begin
        compareCnt <= 2'b0;
    end
end

// compareCode
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compareCode <= 2'b11;
    end else if(co_flag) begin
        compareCode[compareCnt] <= compare_out[0];
    end else if(slip_flag) begin
        compareCode <= 2'b11;
    end
end

// cc_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cc_flag <= 1'b0;
    end else if(co_flag && compareCnt == 2'd1) begin
        cc_flag <= 1'b1;
    end else begin
        cc_flag <= 1'b0;
    end
end

// slip_state
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slip_state <= 2'b0;
    end else if(cc_flag) begin
        case(compareCode)
            2'b11: slip_state <= 2'd1;
            2'b00: slip_state <= 2'd2;
            2'b10: slip_state <= 2'd3;
            2'b01: slip_state <= 2'd3;
            default: slip_state <= 2'd0;
        endcase
    end
end

// slip_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slip_flag <= 1'b0;
    end else if(cc_flag) begin
        slip_flag <= 1'b1;
    end else begin
        slip_flag <= 1'b0;
    end
end

// pCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pCnt <= 4'b0;
    end else if(flag_in || (Hupdate_flag && Ncnt < N-1)) begin
        pCnt <= 4'd1;
    end else if(do_flag1[0] && pCnt == 4'd1) begin
        pCnt <= 4'd2;
    end else if(omZ_flag) begin
        pCnt <= 4'd3;
    end else if(do_flag1[0] && pCnt == 4'd3) begin
        pCnt <= 4'd4;
    end else if(Hupdate_flag && Ncnt == N-1) begin
        pCnt <= 4'd5;
    end else if(ei_flag1[0] && pCnt == 4'd5) begin
        pCnt <= 4'd6;
    end
end

fix2float_inputs
#(
    .N(N),
    .INPUT_SIZE(INPUT_SIZE)
) fix2float_inputs_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawKeys(rawKeys),
    .flag_in(flag_in),

    .features(features),
    .fea_flag(fea_flag) 
);

paraR_ROMs 
#(
    .NUM(HIDDEN_UNITS)
) paraR_ROMs_inst
(
    .sys_clk(sys_clk),
    .addr_RZ(addr_RZ),

    .paraR(paraR)
);

paraZ_ROMs 
#(
    .NUM(HIDDEN_UNITS)
) paraZ_ROMs_inst
(
    .sys_clk(sys_clk),
    .addr_RZ(addr_RZ),

    .paraZ(paraZ)
);

paraH_tilde_ROMs 
#(
    .NUM(HIDDEN_UNITS)
) paraH_tilde_ROMs_inst
(
    .sys_clk(sys_clk),
    .addr_H_tilde(addr_RZ),

    .paraH_tilde(paraH_tilde)
);

L2_ROMs 
#(
    .NUM(NODE_NUM_L2)
) L2_ROMs_inst
(
    .sys_clk(sys_clk),
    .addrL2(addrL2),

    .paraL2(paraL2[NODE_NUM_L2-1:0])
);

mult_parallel1
#(
    .P(NODE_NUM_MAX)
) mult_parallel1_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .w1(multin1_w1reg),
    .w2(multin1_w2reg),
    .w_flag(w_flag1),

    .mult_out(mult_out1),
    .mo_flag(mo_flag1)
);
mult_parallel2
#(
    .P(NODE_NUM_MAX)
) mult_parallel2_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .w1(multin2_w1reg),
    .w2(multin2_w2reg),
    .w_flag(w_flag2),

    .mult_out(mult_out2),
    .mo_flag(mo_flag2)
);

accu_parallel1
#(
    .P(NODE_NUM_MAX)
) accu_parallel1_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .accu_in(accu_in1),
    .ai_flag(ai_flag1),
    .last_flag(last_flag1),

    .accu_out(accu_out1),
    .accu_valid(accu_valid1),
    .ao_flag(ao_flag1)
);
accu_parallel2
#(
    .P(NODE_NUM_MAX)
) accu_parallel2_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .accu_in(accu_in2),
    .ai_flag(ai_flag2),
    .last_flag(last_flag2),

    .accu_out(accu_out2),
    .accu_valid(accu_valid2),
    .ao_flag(ao_flag2)
);

exp_parallel1
#(
    .P(NODE_NUM_MAX)
) exp_parallel1_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .exp_input(exp_in1),
    .expin_flag(ei_flag1),

    .exp_output(exp_out1),
    .expout_flag(eo_flag1)
);
exp_parallel2
#(
    .P(NODE_NUM_MAX)
) exp_parallel2_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .exp_input(exp_in2),
    .expin_flag(ei_flag2),

    .exp_output(exp_out2),
    .expout_flag(eo_flag2)
);

sub_parallel1 // A-B
#(
    .P(NODE_NUM_MAX)
) sub_parallel1_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .A(sub_ain1),
    .B(sub_bin1),
    .subin_flag(si_flag1),

    .sub_out(sub_out1),
    .subout_flag(so_flag1)
);
sub_parallel2 // A-B
#(
    .P(NODE_NUM_MAX)
) sub_parallel2_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .A(sub_ain2),
    .B(sub_bin2),
    .subin_flag(si_flag2),

    .sub_out(sub_out2),
    .subout_flag(so_flag2)
);

div_parallel1 // A/B 
#(
    .P(NODE_NUM_MAX)
) div_parallel1_inst 
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .dividend(dividend1),          // A
    .divisor(divisor1),            // B
    .divin_flag(di_flag1),

    .div_output(div_out1),
    .do_flag(do_flag1)
);
div_parallel2 // A/B 
#(
    .P(NODE_NUM_MAX)
) div_parallel2_inst 
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .dividend(dividend2),          // A
    .divisor(divisor2),            // B
    .divin_flag(di_flag2),

    .div_output(div_out2),
    .do_flag(do_flag2)
);

adder_parallel
#(
    .P(NODE_NUM_MAX)
) adder_parallel_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .A(add_ina),
    .B(add_inb),
    .addin_flag(adi_flag),

    .add_out(add_out),
    .addout_flag(ado_flag)
);

greater_inst greater_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .compare_in1(compare_in1),
    .compare_in2(compare_in2),
    .compare_flag(compare_flag),

    .compare_out(compare_out),
    .co_flag(co_flag)
);
    
endmodule