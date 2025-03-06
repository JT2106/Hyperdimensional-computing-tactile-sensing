`timescale 100ps/100ps
module MLP 
#(
    parameter N = 'd15,
    parameter NODE_NUM_L0 = 'd135,
    parameter NODE_NUM_L1 = 'd64,
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

reg [7:0]  addrL1;
reg [6:0]  addrL2;
reg [31:0] rawPara[NODE_NUM_MAX-1:0];
reg        pl_flag;
reg        rp_flag;
reg        wb_flag_reg1;
reg [7:0]  feaCnt;
reg [31:0] fea;
reg [31:0] wb_reg[NODE_NUM_MAX-1:0];
reg        mo_flag_reg1;
reg [31:0] accu_in[NODE_NUM_MAX-1:0];
reg        ai_flag[NODE_NUM_MAX-1:0];
reg        last_flag[NODE_NUM_MAX-1:0];
reg [31:0] relu_out[NODE_NUM_MAX-1:0];
reg        reluout_flag;
reg [1:0]  layerCnt;
reg [1:0]  expinCnt;
reg [31:0] exp_input;
reg        expin_flag;
reg [1:0]  expoutCnt;
reg [31:0] expout[2:0];
reg [31:0] exp_sum;
reg        divin_flag;
reg [31:0] compare_in1;
reg [31:0] compare_in2;
reg        compare_flag;
reg [1:0]  compareCnt;
reg [1:0]  compareCode;
reg        cc_flag;

wire [31:0] paraL1[NODE_NUM_L1-1:0];
wire [31:0] paraL2[NODE_NUM_L2-1:0];
wire [31:0] features[NODE_NUM_L0-1:0];
wire        fea_flag[NODE_NUM_L0-1:0];
//wire [31:0] wb[NODE_NUM_MAX-1:0];
//wire        wb_flag[NODE_NUM_MAX-1:0];
wire [31:0] mult_out[NODE_NUM_MAX-1:0];
wire        mo_flag[NODE_NUM_MAX-1:0];
wire [31:0] accu_out[NODE_NUM_MAX-1:0];
wire        accu_valid[NODE_NUM_MAX-1:0];
wire        ao_flag[NODE_NUM_MAX-1:0];
wire [31:0] exp_output;
wire        expout_flag;
wire [31:0] div_output[NODE_NUM_L2-1:0];
wire        do_flag[NODE_NUM_L2-1:0];
wire [7:0]  compare_out;
wire        co_flag;

integer i;
genvar j;

// addrL1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        addrL1 <= 8'b0;
    end else if(fea_flag[0]) begin
        addrL1 <= 8'b1;
    end else if(addrL1 > 1'b0 && addrL1 < NODE_NUM_L0) begin
        addrL1 <= addrL1 + 1'b1;
    end else if(addrL1 == NODE_NUM_L0) begin
        addrL1 <= 8'b0;
    end
end

// addrL2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        addrL2 <= 7'b0;
    end else if(reluout_flag) begin
        addrL2 <= 7'b1;
    end else if(addrL2 > 1'b0 && addrL2 < NODE_NUM_L1) begin
        addrL2 <= addrL2 + 1'b1;
    end else if(addrL2 == NODE_NUM_L1) begin
        addrL2 <= 7'b0;
    end
end

// pl_flag (parameter of cetain layer flag)
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pl_flag <= 1'b0;
    end else if(fea_flag[0] || reluout_flag) begin
        pl_flag <= 1'b1;
    end else if(pl_flag == 1'b1 && ((addrL1 == 1'b0 && layerCnt == 2'd1) || (addrL2 == 1'b0 && layerCnt == 2'd2))) begin
        pl_flag <= 1'b0;
    end
end

// rawPara
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(i=0; i<NODE_NUM_MAX; i=i+1) begin
            rawPara[i] <= 32'b0;
        end
    end else if(layerCnt == 2'd1 && pl_flag) begin
        for(i=0; i<NODE_NUM_L1; i=i+1) begin
            rawPara[i] <= paraL1[i];
        end
    end else if(layerCnt == 2'd2 && pl_flag) begin
        for(i=0; i<NODE_NUM_L2; i=i+1) begin
            rawPara[i] <= paraL2[i];
        end
    end
end

// rp_flag (raw parameter flag)
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        rp_flag <= 1'b0;
    end else begin
        rp_flag <= pl_flag;
    end
end

// feaCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        feaCnt <= 8'b0;
    end else if(rp_flag && ((layerCnt == 2'd1 && feaCnt < NODE_NUM_L0-1) || (layerCnt == 2'd2 && feaCnt < NODE_NUM_L1-1))) begin
        feaCnt <= feaCnt + 1'b1;
    end else if(flag_in || reluout_flag) begin
        feaCnt <= 1'b0;
    end
end

// fea
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        fea <= 32'b0;
    end else if(rp_flag && layerCnt == 2'd1) begin
        fea <= features[feaCnt];
    end else if(rp_flag && layerCnt == 2'd2) begin
        fea <= relu_out[feaCnt];
    end
end

// wb_reg
generate
    for(j=0; j<NODE_NUM_MAX; j=j+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                wb_reg[j] <= 32'b0;
            end else begin
                wb_reg[j] <= rawPara[j];
            end
        end
    end
endgenerate

// wb_flag_reg1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        wb_flag_reg1 <= 1'b0;
    end else begin
        wb_flag_reg1 <= rp_flag;
    end
end

assign w_flag = rp_flag & wb_flag_reg1;

// mo_flag_reg1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        mo_flag_reg1 <= 1'b0;
    end else begin
        mo_flag_reg1 <= mo_flag[0];
    end
end

// accu_in
generate
    for(j=0; j<NODE_NUM_MAX; j=j+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                accu_in[j] <= 32'b0;
            end else if(mo_flag[0]) begin
                accu_in[j] <= mult_out[j];
            end else if(mo_flag[0] == 1'b0 && mo_flag_reg1) begin
                accu_in[j] <= rawPara[j];
            end
        end
    end
endgenerate

// ai_flag
generate
    for(j=0; j<NODE_NUM_MAX; j=j+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                ai_flag[j] <= 1'b0;
            end else if(mo_flag[0] && mo_flag_reg1 == 1'b0) begin
                ai_flag[j] <= 1'b1;
            end else if(mo_flag[0] == 1'b0 && mo_flag_reg1 == 1'b0) begin
                ai_flag[j] <= 1'b0;
            end
        end
    end
endgenerate

// last_flag
generate
    for(j=0; j<NODE_NUM_MAX; j=j+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                last_flag[j] <= 1'b0;
            end else if(mo_flag[0] == 1'b0 && mo_flag_reg1) begin
                last_flag[j] <= 1'b1;
            end else if(layerCnt != 2'd3) begin
                last_flag[j] <= 1'b0;
            end
        end
    end
endgenerate

// relu_out
generate
    for(j=0; j<NODE_NUM_MAX; j=j+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                relu_out[j] <= 32'b0;
            end else if(ao_flag[j] && layerCnt == 2'd1) begin
                relu_out[j] <= accu_out[j][31] == 1'b0 ? accu_out[j] : 1'b0;
            end
        end
    end
endgenerate

// reluout_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        reluout_flag <= 1'b0;
    end else if(ao_flag[0] && layerCnt == 2'd1) begin
        reluout_flag <= 1'b1;
    end else begin
        reluout_flag <= 1'b0;
    end
end

// layerCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        layerCnt <= 2'b0;
    end else if(flag_in) begin
        layerCnt <= 2'd1;
    end else if(reluout_flag) begin
        layerCnt <= 2'd2;
    end else if(expin_flag) begin
        layerCnt <= 2'd3;
    end
end

// expinCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        expinCnt <= 2'b0;
    end else if(ao_flag[0] && layerCnt == 2'd2) begin
        expinCnt <= 2'b1;
    end else if(expinCnt > 1'b0 && expinCnt < NODE_NUM_L2-1) begin
        expinCnt <= expinCnt + 1'b1;
    end else if(expinCnt == NODE_NUM_L2-1) begin
        expinCnt <= 2'b0;
    end
end

// exp_input
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        exp_input <= 32'b0;
    end else begin
        exp_input <= accu_out[expinCnt];
    end
end

// expin_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        expin_flag <= 1'b0;
    end else if(ao_flag[0] && layerCnt == 2'd2) begin
        expin_flag <= 1'b1;
    end else if(expin_flag == 1'b1 && expinCnt == 2'b0) begin
        expin_flag <= 1'b0;
    end
end

// expoutCnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        expoutCnt <= 2'b0;
    end else if(expout_flag && expoutCnt < NODE_NUM_L2-1) begin
        expoutCnt <= expoutCnt + 1'b1;
    end else if(expoutCnt == NODE_NUM_L2-1) begin
        expoutCnt <= 2'b0;
    end
end

// expout [2:0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for (i=0; i<NODE_NUM_L2; i=i+1) begin
            expout[i] <= 32'b0;
        end
    end else if(expout_flag) begin
        expout[expoutCnt] <= exp_output;
    end
end

// accu_in[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        accu_in[0] <= 1'b0;
    end else if(expout_flag) begin
        accu_in[0] <= exp_output;
    end
end

// ai_flag[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        ai_flag[0] <= 1'b0;
    end else if(layerCnt == 2'd3) begin
        ai_flag[0] <= expout_flag;
    end
end

// last_flag[0]
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        last_flag[0] <= 1'b0;
    end else if(layerCnt == 2'd3 && expoutCnt == 2'd2 && expout_flag == 1'b1) begin
        last_flag[0] <= 1'b1;
    end else if(layerCnt == 2'd3) begin
        last_flag[0] <= 1'b0;
    end
end

// exp_sum
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        exp_sum <= 32'b0;
    end else if(ao_flag[0] && layerCnt == 2'd3) begin
        exp_sum <= accu_out[0];
    end
end

// divin_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        divin_flag <= 1'b0;
    end else if(ao_flag[0] && layerCnt == 2'd3) begin
        divin_flag <= 1'b1;
    end else begin
        divin_flag<= 1'b0;
    end
end

// compare_in1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_in1 <= 32'b0;
    end else if(do_flag[0]) begin
        compare_in1 <= div_output[0];
    end else if(compareCode[0] == 1'b0 && co_flag && compareCnt == 2'd0) begin
        compare_in1 <= div_output[2];
    end
end

// compare_in2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_in2 <= 32'b0;
    end else if(do_flag[0]) begin
        compare_in2 <= div_output[1];
    end else if(compareCode[0] == 1'b1 && co_flag && compareCnt == 2'd0) begin
        compare_in2 <= div_output[2];
    end
end

// compare_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        compare_flag <= 1'b0;
    end else if(do_flag[0] || (co_flag && compareCnt == 2'd0)) begin
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

L1_ROMs 
#(
    .NUM(NODE_NUM_L1)
) L1_ROMs_inst
(
    .sys_clk(sys_clk),
    .addrL1(addrL1),

    .paraL1(paraL1)
);

L2_ROMs 
#(
    .NUM(NODE_NUM_L2)
) L2_ROMs_inst
(
    .sys_clk(sys_clk),
    .addrL2(addrL2),

    .paraL2(paraL2)
);

fix2float_inputs
#(
    .N(N)
) fix2float_inputs_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawKeys(rawKeys),
    .flag_in(flag_in),

    .features(features),
    .fea_flag(fea_flag) 
);

/* fix2float_parameters
#(
    .P(NODE_NUM_MAX)
) fix2float_parameters_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawPara(rawPara),
    .flag_in(rp_flag),

    .wb(wb),
    .wb_flag(wb_flag) 
); */

mult_parallel
#(
    .P(NODE_NUM_MAX)
) mult_parallel_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .fea(fea),
    .w(wb_reg),
    .w_flag(w_flag),

    .mult_out(mult_out),
    .mo_flag(mo_flag)
);

accu_parallel
#(
    .P(NODE_NUM_MAX)
) accu_parallel_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .accu_in(accu_in),
    .ai_flag(ai_flag),
    .last_flag(last_flag),

    .accu_out(accu_out),
    .accu_valid(accu_valid),
    .ao_flag(ao_flag)
);

exp_inst exp_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .exp_input(exp_input),
    .expin_flag(expin_flag),

    .exp_output(exp_output),
    .expout_flag(expout_flag)
);

div_parallel // A/B 
#(
    .P(NODE_NUM_L2)
) div_parallel_inst 
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .dividend(expout),          // A
    .divisor(exp_sum),          // B
    .divin_flag(divin_flag),

    .div_output(div_output),
    .do_flag(do_flag)
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