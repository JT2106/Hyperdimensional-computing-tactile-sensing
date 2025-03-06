`timescale 100ps/100ps
module float2fix (
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] float,
    input  wire        flag_in,

    output wire        flag_out,
    output wire [15:0] fix
);

floating_point_0 floating_point_0_inst (
  .aclk(sys_clk),                                                             
  .aresetn(sys_rst_n),                           
  .s_axis_a_tvalid(flag_in),         
  .s_axis_a_tdata(float),             
  .m_axis_result_tvalid(flag_out), 
  .m_axis_result_tdata(fix)    
);
    
endmodule