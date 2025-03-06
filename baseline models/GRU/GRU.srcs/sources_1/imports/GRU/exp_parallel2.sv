`timescale 100ps/100ps
module exp_parallel2
#(
    parameter P = 'd8
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] exp_input[P-1:0],
    input  wire        expin_flag[P-1:0],

    output wire [31:0] exp_output[P-1:0],
    output wire        expout_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        exp exp_parallel2 (
          .aclk(sys_clk),                                 
          .aresetn(sys_rst_n),                           
          .s_axis_a_tvalid(expin_flag[i]),           
          .s_axis_a_tdata(exp_input[i]),  

          .m_axis_result_tvalid(expout_flag[i]), 
          .m_axis_result_tdata(exp_output[i])    
        );
    end
endgenerate

endmodule