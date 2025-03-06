`timescale 100ps/100ps
module mult_disp
(
    input  wire         sys_clk,
    input  wire         sys_rst_n,
    input  wire [15:0]  A,
    input  wire [15:0]  B,
    input  wire         flag,

    output wire [15:0] P
);

mult_gen_0 mult_gen_0_inst
(
    .CLK(sys_clk),
    .A(A),      
    .B(B),      
    .CE(flag),    
    .SCLR(~sys_rst_n),
    
    .P(P)
);

endmodule