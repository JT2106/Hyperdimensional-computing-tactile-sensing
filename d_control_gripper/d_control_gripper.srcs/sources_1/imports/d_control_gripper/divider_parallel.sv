`timescale 100ps/100ps
module divider_parallel (
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [15:0] x2ay2az2[8:0],
    input  wire [15:0] x2ay2[8:0],
    input  wire        div_in,

    output wire [7:0]  ptan2[8:0],
    output wire        div_out[8:0]
);

genvar i;
generate
    for (i=0; i<9; i=i+1) begin: div_disptan
        divider_disp divider_disp_inst_tan (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .A(x2ay2[i]),
            .B(x2ay2az2[i]),
            .flag_in(div_in),

            .P(ptan2[i]),
            .flag_out(div_out[i])
        );   
    end
endgenerate
    
endmodule