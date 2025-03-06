`timescale 100ps/100ps
module activeAM 
#(
    parameter Dpl = 16'd8
)
(
    input wire           sys_clk,
    input wire [3:0]     rd_addr,
    input wire [3:0]     wr_addr,
    input wire           wr_en,
    input wire [Dpl-1:0] new_pHV,

    output wire [Dpl-1:0] item_pHV
);

activeAM_RAM activeAM_RAM_inst (
    .clka(sys_clk),   
    .wea(wr_en),      
    .addra(wr_addr),  
    .dina(new_pHV),   
    .clkb(sys_clk),   
    .addrb(rd_addr),  
    .doutb(item_pHV)  
);

endmodule