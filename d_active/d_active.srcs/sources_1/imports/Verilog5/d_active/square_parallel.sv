`timescale 100ps/100ps
module square_parallel (
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [15:0] fix_data[26:0],
    input  wire        fix_in[26:0],

    output reg         square_out,
    output wire [15:0] x2[8:0],
    output wire [15:0] y2[8:0],
    output wire [15:0] z2[8:0]
);

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        square_out <= 1'b0;
    end else if(fix_in[0] == 1'b1) begin
        square_out <= fix_in[0];
    end else begin
        square_out <= 1'b0;
    end
end

genvar i;
generate
    for (i=0; i<9; i=i+1) begin: mult_dispx
        mult_disp mult_disp_inst_x (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .A(fix_data[3*i+2]),
            .B(fix_data[3*i+2]),
            .flag(fix_in[3*i+2]),

            .P(x2[i])
        );
    end
endgenerate

generate
    for (i=0; i<9; i=i+1) begin: mult_dispy
        mult_disp mult_disp_inst_y (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .A(fix_data[3*i+1]),
            .B(fix_data[3*i+1]),
            .flag(fix_in[3*i+1]),

            .P(y2[i])
        );
    end
endgenerate

generate
    for (i=0; i<9; i=i+1) begin: mult_dispz
        mult_disp mult_disp_inst_z (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .A(fix_data[3*i]),
            .B(fix_data[3*i]),
            .flag(fix_in[3*i]),

            .P(z2[i])
        );
    end
endgenerate
    
endmodule