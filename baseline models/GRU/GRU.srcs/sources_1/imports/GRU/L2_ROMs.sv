`timescale 100ps/100ps
module L2_ROMs 
#(
    parameter NUM = 'd3
) 
(
    input  wire        sys_clk,
    input  wire [3:0]  addrL2,

    output wire [31:0] paraL2[NUM-1:0]
);

genvar i;
generate
    for (i=0; i<NUM; i=i+1) begin
        L2_ROM L2_ROM_parallel (
            .clka(sys_clk),  
            .addra(addrL2),

            .douta(paraL2[i]) 
        );
    end
endgenerate

endmodule