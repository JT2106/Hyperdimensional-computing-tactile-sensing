`timescale 100ps/100ps
module paraZ_ROMs 
#(
    parameter NUM = 'd8
) 
(
    input  wire        sys_clk,
    input  wire [4:0]  addr_RZ,

    output wire [31:0] paraZ[NUM-1:0]
);

genvar i;
generate
    for (i=0; i<NUM; i=i+1) begin
        L1_ROM L1Z_ROM_parallel (
            .clka(sys_clk),  
            .addra(addr_RZ),

            .douta(paraZ[i]) 
        );
    end
endgenerate

endmodule