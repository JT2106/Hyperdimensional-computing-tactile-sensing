`timescale 100ps/100ps
module L1_ROMs 
#(
    parameter NUM = 'd64
) 
(
    input  wire        sys_clk,
    input  wire [7:0]  addrL1,

    output wire [31:0] paraL1[NUM-1:0]
);

genvar i;
generate
    for (i=0; i<NUM; i=i+1) begin
        L1_ROM L1_ROM_parallel (
            .clka(sys_clk),  
            .addra(addrL1),

            .douta(paraL1[i]) 
        );
    end
endgenerate

endmodule