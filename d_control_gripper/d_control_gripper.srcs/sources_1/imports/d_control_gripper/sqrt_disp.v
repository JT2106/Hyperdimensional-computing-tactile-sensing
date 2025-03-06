`timescale 100ps/100ps
module sqrt_disp (
    input  wire       sys_clk,
    input  wire       sys_rst_n,
    input  wire [7:0] A,
    input  wire       flag_in,

    output wire       flag_out,
    output wire [7:0] P
);

cordic_0 cordic_0_inst (
  .aclk(sys_clk),                                       
  .aresetn(sys_rst_n),                                 
  .s_axis_cartesian_tvalid(flag_in), 
  .s_axis_cartesian_tdata(A),   
  .m_axis_dout_tvalid(flag_out),           
  .m_axis_dout_tdata(P)              
);
    
endmodule