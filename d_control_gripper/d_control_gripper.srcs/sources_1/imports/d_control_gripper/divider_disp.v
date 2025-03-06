`timescale 100ps/100ps
module divider_disp (
    input  wire         sys_clk,
    input  wire         sys_rst_n,
    input  wire [15:0]  A,
    input  wire [15:0]  B,
    input  wire         flag_in,

    output wire [23:0]  P,
    output wire         flag_out
);

div_gen_0 div_gen_0_inst // A / B
(
    .aclk(sys_clk),                                    
    .aresetn(sys_rst_n),                              
    .s_axis_divisor_tvalid(flag_in),  
    .s_axis_divisor_tdata(B),    
    .s_axis_dividend_tvalid(flag_in),
    .s_axis_dividend_tdata(A),  
    .m_axis_dout_tvalid(flag_out),        
    .m_axis_dout_tdata(P)           
);

endmodule