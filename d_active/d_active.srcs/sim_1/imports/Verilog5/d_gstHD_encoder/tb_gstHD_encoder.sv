`timescale 100ps/100ps
module tb_gstHD_encoder 
#(
    parameter N = 'd15,
    parameter D = 'd1000,
    parameter CHAN_NUM = 'd9,
    parameter NE_NUM = 'd21
) 
();

reg          sys_clk;
reg          sys_rst_n;
reg  [7:0]   rawKeys[8:0];
reg          flag_in;

wire [D-1:0] HV;
wire         HV_flag;

wire [D-1:0] gsbin_HD;
wire         gsbin_flag;

integer i;

initial begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;

    #1000
    sys_rst_n <= 1'b1;
    #500
    for(i=0; i<9; i=i+1) begin
        rawKeys[i] <= 8'b1;
    end
    flag_in <= 1'b1;
    #100
    flag_in <= 1'b0;
end

always #50 sys_clk = ~sys_clk;

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