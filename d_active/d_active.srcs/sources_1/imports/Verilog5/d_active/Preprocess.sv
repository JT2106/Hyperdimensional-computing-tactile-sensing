`timescale 100ps/100ps
module Preprocess (
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] float_pdisps[26:0],
    input  wire [31:0] float_pfs[26:0],
    input  wire [31:0] float_tfs[2:0],
    input  wire        flag_in_pdisps,
    input  wire        flag_in_pfs,
    input  wire        flag_in_tfs,

    output wire [15:0] fix_pdisps[26:0],
    output wire        flag_out_pdisps[26:0],
    output wire [15:0] fix_pfs[26:0],
    output wire        flag_out_pfs[26:0],
    output wire [15:0] fix_tfs[2:0],
    output wire        flag_out_tfs[2:0],
    output wire [7:0]  ptan[8:0],
    output wire        preprocess_out[8:0]
);

wire        square_out;
wire [15:0] x2[8:0];
wire [15:0] y2[8:0];
wire [15:0] z2[8:0];
wire        add_out;
wire [15:0] x2ay2az2[8:0];
wire [15:0] x2ay2[8:0];
wire [7:0]  ptan2[8:0];
wire        div_out[8:0];

float2fix_pdisps float2fix_pdisps_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(float_pdisps),
    .flag_in(flag_in_pdisps),

    .flag_out(flag_out_pdisps),
    .fix_data(fix_pdisps)
);

float2fix_pfs float2fix_pfs_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(float_pfs),
    .flag_in(flag_in_pfs),

    .flag_out(flag_out_pfs),
    .fix_data(fix_pfs)
);

float2fix_tfs float2fix_tfs_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(float_tfs),
    .flag_in(flag_in_tfs),

    .flag_out(flag_out_tfs),
    .fix_data(fix_tfs)
);

square_parallel square_parallel_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .fix_data(fix_pdisps),
    .fix_in(flag_out_pdisps),

    .square_out(square_out),
    .x2(x2),
    .y2(y2),
    .z2(z2)
);

add_parallel add_parallel_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .x2(x2),
    .y2(y2),
    .z2(z2),
    .add_in(square_out),

    .add_out(add_out),
    .x2ay2az2(x2ay2az2),
    .x2ay2(x2ay2)
);

divider_parallel divider_parallel_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .x2ay2az2(x2ay2az2),
    .x2ay2(x2ay2),
    .div_in(add_out),

    .ptan2(ptan2),
    .div_out(div_out)
);

sqrt_parallel sqrt_parallel_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .ptan2(ptan2),
    .sqrt_in(div_out),

    .ptan(ptan),
    .sqrt_out(preprocess_out)
);

endmodule