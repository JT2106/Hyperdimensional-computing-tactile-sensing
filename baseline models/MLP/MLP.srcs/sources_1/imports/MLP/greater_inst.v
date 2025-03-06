`timescale 100ps/100ps
module greater_inst 
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] compare_in1,
    input  wire [31:0] compare_in2,
    input  wire        compare_flag,

    output wire [7:0]  compare_out,
    output wire        co_flag
);

greater greater_inst (
  .aclk(sys_clk),                                 
  .aresetn(sys_rst_n),                           
  .s_axis_a_tvalid(compare_flag),           
  .s_axis_a_tdata(compare_in1),             
  .s_axis_b_tvalid(compare_flag),           
  .s_axis_b_tdata(compare_in2),

  .m_axis_result_tvalid(co_flag), 
  .m_axis_result_tdata(compare_out)    
);
    
endmodule