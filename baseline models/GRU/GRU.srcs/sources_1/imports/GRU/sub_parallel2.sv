`timescale 100ps/100ps
module sub_parallel2
#(
    parameter P = 'd8
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] A[P-1:0],
    input  wire [31:0] B[P-1:0],
    input  wire        subin_flag[P-1:0],

    output wire [31:0] sub_out[P-1:0],
    output wire        subout_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        sub sub_parallel2 (
          .aclk(sys_clk),                               
          .aresetn(sys_rst_n),                         
          .s_axis_a_tvalid(subin_flag[i]),         
          .s_axis_a_tdata(A[i]),           
          .s_axis_b_tvalid(subin_flag[i]),         
          .s_axis_b_tdata(B[i]),

          .m_axis_result_tvalid(subout_flag[i]),
          .m_axis_result_tdata(sub_out[i])  
        );
    end
endgenerate

endmodule