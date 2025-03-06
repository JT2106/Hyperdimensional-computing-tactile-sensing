`timescale 100ps/100ps
module fix2float_inputs
#(
    parameter N = 'd15
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [7:0]  rawKeys[8:0][N-1:0],
    input  wire        flag_in,

    output wire [31:0] features[9*N-1:0],
    output wire        fea_flag[9*N-1:0] 
);

genvar i;
genvar j;
generate
    for (i=0; i<9; i=i+1) begin
        for (j=0; j<N; j=j+1) begin
            fix2float_input fix2float_inputs (
                .aclk(sys_clk),
                .aresetn(sys_rst_n),
                .s_axis_a_tvalid(flag_in),
                .s_axis_a_tdata({1'b0, rawKeys[i][j]}),

                .m_axis_result_tvalid(fea_flag[9*j+i]),
                .m_axis_result_tdata(features[9*j+i])
            );
        end
    end
endgenerate

endmodule