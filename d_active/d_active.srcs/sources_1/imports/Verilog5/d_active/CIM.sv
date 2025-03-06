`timescale 100ps/100ps
module CIM
#(
    parameter Dpl = 16'd8
)
(
    input wire       sys_clk,
    input wire [4:0] fea_addr1,
    input wire [4:0] fea_addr2,

    output wire [Dpl-1:0] feaHV1,
    output wire [Dpl-1:0] feaHV2
);

CIM_ROM CIM_ROM_inst
(
    .clka(sys_clk),
    .addra(fea_addr1),
    .douta(feaHV1),
    .clkb(sys_clk),  
    .addrb(fea_addr2),
    .doutb(feaHV2)
);
    
endmodule