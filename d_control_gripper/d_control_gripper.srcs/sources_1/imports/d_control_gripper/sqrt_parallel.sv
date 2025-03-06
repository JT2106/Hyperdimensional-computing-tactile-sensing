`timescale 100ps/100ps
module sqrt_parallel (
    input  wire       sys_clk,
    input  wire       sys_rst_n,
    input  wire [7:0] ptan2[8:0],
    input  wire       sqrt_in[8:0],

    output wire [7:0] ptan[8:0],
    output wire       sqrt_out[8:0]
);

genvar i;
generate
    for (i=0; i<9; i=i+1) begin: sqrt_disptan
        sqrt_disp sqrt_disp_inst_tan (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .A(ptan2[i]),
            .flag_in(sqrt_in[i]),

            .flag_out(sqrt_out[i]),
            .P(ptan[i])
        );
    end
endgenerate

endmodule