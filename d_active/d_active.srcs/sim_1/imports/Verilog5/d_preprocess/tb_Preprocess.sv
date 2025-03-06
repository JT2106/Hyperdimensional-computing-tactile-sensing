`timescale 100ps/100ps
module tb_Preprocess 
();

reg        sys_clk;
reg        sys_rst_n;
reg [31:0] float_pdisps[26:0];
reg [31:0] float_pfs[26:0];
reg [31:0] float_tfs[2:0];
reg        flag_in_pdisps;
reg        flag_in_pfs;
reg        flag_in_tfs;

wire [15:0] fix_pdisps[26:0];
wire        flag_out_pdisps[26:0];
wire [15:0] fix_pfs[26:0];
wire        flag_out_pfs[26:0];
wire [15:0] fix_tfs[2:0];
wire        flag_out_tfs[2:0];
wire [7:0]  ptan[8:0];
wire        preprocess_out[8:0];

initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;

    #1000
    sys_rst_n <= 1'b1;
    #500
    flag_in_pdisps <= 1'b1;
    float_pdisps <= '{'h3cbbda2d,'h3b930375,'hbb1547cb,'h3d8c6136,'hbc6cce7d,'h3a773e59,'h3d4c5aa3,'hbc3d29c3,'h3ad5871b,'h3d00eacc,'h3ba6f99f,'hbb91aa4b,'h3cf728fb,'hbc1809e7,'hbc085efd,'h3d093da1,'hbb6a8037,'h3ad818a3,'h3d071b8b,'hbbf2011a,'hbbb1b900,'h3d917942,'h3b895d55,'h3aa0a6c3,'h3d21f0fe,'h3c7e47b0,'h3ac4a30c};
    #100
    flag_in_pdisps <= 1'b0;
end

always #50 sys_clk = ~sys_clk;

Preprocess Preprocess_sim
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .float_pdisps(float_pdisps),
    .float_pfs(float_pfs),
    .float_tfs(float_tfs),
    .flag_in_pdisps(flag_in_pdisps),
    .flag_in_pfs(flag_in_pfs),
    .flag_in_tfs(flag_in_tfs),

    .fix_pdisps(fix_pdisps),
    .flag_out_pdisps(flag_out_pdisps),
    .fix_pfs(fix_pfs),
    .flag_out_pfs(flag_out_pfs),
    .fix_tfs(fix_tfs),
    .flag_out_tfs(flag_out_tfs),
    .ptan(ptan),
    .preprocess_out(preprocess_out)
);

endmodule