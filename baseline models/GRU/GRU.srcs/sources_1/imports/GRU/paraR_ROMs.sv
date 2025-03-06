`timescale 100ps/100ps
module paraR_ROMs 
#(
    parameter NUM = 'd8
) 
(
    input  wire        sys_clk,
    input  wire [4:0]  addr_RZ,

    output wire [31:0] paraR[NUM-1:0]
);

genvar i;
generate
    for (i=0; i<NUM; i=i+1) begin
        L1_ROM L1R_ROM_parallel (
            .clka(sys_clk),  
            .addra(addr_RZ),

            .douta(paraR[i]) 
        );
    end
endgenerate

endmodule