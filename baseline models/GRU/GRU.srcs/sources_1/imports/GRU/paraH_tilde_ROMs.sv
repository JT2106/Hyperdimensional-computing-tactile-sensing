`timescale 100ps/100ps
module paraH_tilde_ROMs 
#(
    parameter NUM = 'd8
) 
(
    input  wire        sys_clk,
    input  wire [4:0]  addr_H_tilde,

    output wire [31:0] paraH_tilde[NUM-1:0]
);

genvar i;
generate
    for (i=0; i<NUM; i=i+1) begin
        L1_ROM L1H_tilde_ROM_parallel (
            .clka(sys_clk),  
            .addra(addr_H_tilde),

            .douta(paraH_tilde[i]) 
        );
    end
endgenerate

endmodule