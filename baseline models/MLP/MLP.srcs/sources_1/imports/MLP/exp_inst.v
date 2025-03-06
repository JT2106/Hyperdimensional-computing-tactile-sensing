`timescale 100ps/100ps
module exp_inst 
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] exp_input,
    input  wire        expin_flag,

    output wire [31:0] exp_output,
    output wire        expout_flag
);

exp exp_inst (
  .aclk(sys_clk),                                 
  .aresetn(sys_rst_n),                           
  .s_axis_a_tvalid(expin_flag),           
  .s_axis_a_tdata(exp_input),  

  .m_axis_result_tvalid(expout_flag), 
  .m_axis_result_tdata(exp_output)    
);
    
endmodule