`timescale 100ps/100ps
module IM 
#(
    parameter Dpl = 16'd8
)

(
    input wire       sys_clk,
    input wire [3:0] chan_addr, 

    output wire [Dpl-1:0] chanHV
);

IM_ROM IM_ROM_inst (
  .clka(sys_clk),    
  .addra(chan_addr), 
  .douta(chanHV) 
);

endmodule