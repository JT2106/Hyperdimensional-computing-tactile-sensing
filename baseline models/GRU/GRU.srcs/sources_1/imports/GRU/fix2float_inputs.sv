`timescale 100ps/100ps
module fix2float_inputs
#(
    parameter N = 'd15,
    parameter INPUT_SIZE = 'd9
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [7:0]  rawKeys[INPUT_SIZE-1:0][N-1:0],
    input  wire        flag_in,

    output wire [31:0] features[INPUT_SIZE-1:0][N-1:0],
    output wire        fea_flag[INPUT_SIZE-1:0][N-1:0] 
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

                .m_axis_result_tvalid(fea_flag[i][j]),
                .m_axis_result_tdata(features[i][j])
            );
        end
    end
endgenerate

endmodule