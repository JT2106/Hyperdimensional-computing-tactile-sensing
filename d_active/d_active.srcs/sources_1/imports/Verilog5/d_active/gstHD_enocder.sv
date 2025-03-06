`timescale 100ps/100ps
module gstHD_encoder 
#(
    parameter N = 'd15,
    parameter D = 'd1000,
    parameter CHAN_NUM = 'd9,
    parameter NE_NUM = 'd21
) 
(
    input wire          sys_clk,
    input wire          sys_rst_n,
    input wire  [7:0]   rawKeys[8:0],
    input wire          flag_in,

    output wire [D-1:0] HV,
    output wire         HV_flag
);

wire [D-1:0] gsbin_HD;
wire         gsbin_flag;

gsHD_encoder
#(
    .D(D),
    .CHAN_NUM(CHAN_NUM),
    .NE_NUM(NE_NUM)
) gsHD_encoder_sim
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawKeys(rawKeys),
    .flag_in(flag_in),

    .gsbin_HD(gsbin_HD),
    .gsbin_flag(gsbin_flag)
);

tHD_encoder
#(
    .N(N),
    .D(D)
) tHD_encoder_sim
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .gsbin_HD(gsbin_HD),
    .gsbin_flag(gsbin_flag),

    .HV(HV),
    .HV_flag(HV_flag)
);

endmodule