`timescale 100ps/100ps
module adder_parallel
#(
    parameter P = 'd8
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] A[P-1:0],
    input  wire [31:0] B[P-1:0],
    input  wire        addin_flag[P-1:0],

    output wire [31:0] add_out[P-1:0],
    output wire        addout_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        adder adder_parallel (
          .aclk(sys_clk),                               
          .aresetn(sys_rst_n),                         
          .s_axis_a_tvalid(addin_flag[i]),         
          .s_axis_a_tdata(A[i]),
          .s_axis_b_tvalid(addin_flag[i]),         
          .s_axis_b_tdata(B[i]),

          .m_axis_result_tvalid(addout_flag[i]),
          .m_axis_result_tdata(add_out[i])  
        );
    end
endgenerate

endmodule