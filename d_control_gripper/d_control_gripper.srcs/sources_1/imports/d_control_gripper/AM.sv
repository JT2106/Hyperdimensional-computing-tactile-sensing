`timescale 100ps/100ps
module AM 
#(
    parameter Dpl = 16'd8
)
(
    input wire       sys_clk,
    input wire [1:0] AM_addr, 

    output wire [Dpl-1:0] classHV
);

AM_ROM AM_ROM_inst
(
    .clka(sys_clk),
    .addra(AM_addr),
    .douta(classHV)
);
    
endmodule