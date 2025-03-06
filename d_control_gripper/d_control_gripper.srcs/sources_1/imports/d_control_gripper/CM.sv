`timescale 100ps/100ps
module CM 
#(
    parameter Dpl = 16'd8
)
(
    input wire       sys_clk,
    input wire [1:0] zp_lvl,

    output wire [Dpl-1:0] zpHV
);

CM_ROM CM_ROM_inst
(
    .clka(sys_clk),
    .addra(zp_lvl),
    .douta(zpHV)
);
    
endmodule