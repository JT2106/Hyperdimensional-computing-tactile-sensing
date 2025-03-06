`timescale 100ps/100ps
module d_control_gripper
#(
    parameter UART_BPS = 'd2_000_000,
    parameter GRPR_BPS = 'd115200,
    parameter CLK_FREQ = 'd100_000_000,
    parameter D = 'd1000,
    parameter N = 'd15,
    parameter LOG_BIT = 16+(16*27*N)+16+1000+16+8+16,
    parameter LOG_LEN = LOG_BIT / 8,
    parameter GC_CMD_BYTE = 'd15,         // gripper control cmd byte
    parameter GRD_CMD_BYTE = 'd8,         // gripper read cmd byte
    parameter RAW_CMD_BYTE = GC_CMD_BYTE > GRD_CMD_BYTE ? GC_CMD_BYTE : GRD_CMD_BYTE,
    parameter P_LEN = 'd234,
    parameter SEN_F_LEN = 'd14,
    parameter HDR1_LEN = 'd20,
    parameter HDR2_LEN = 'd6,
    parameter CHAN_NUM = 'd9,
    parameter NE_NUM = 'd21
)
(
    input  wire sys_clk_p,
    input  wire sys_clk_n,
    input  wire sys_rst_n,
    input  wire rx_from_pa,
    input  wire rx_from_gripper,
    input  wire rx_from_pc,

    output wire tx_2_gripper,
    output wire tx_2_pc
);

wire [7:0]   sensor_rx;
wire         sen_in_flag;
wire [7:0]   gripper_msg;
wire         gm_flag;
wire [7:0]   oracle_msg;
wire         om_flag;
wire [7:0]   gcrd_cmd[RAW_CMD_BYTE-1:0];
wire         gcrd_flag;
wire [7:0]   cmd_len;
wire         tx_busy_grpr;
wire [7:0]   data_log[LOG_LEN-1:0];
wire         log_flag;
wire [7:0]   uart_data_grpr;
wire         uart_flag_grpr;
wire [7:0]   slip_state;
wire         slip_flag;
wire [7:0]   items;
wire         item_flag;
wire [D-1:0] itemHV;
wire         tx_busy_pc;
wire [7:0]   uart_data_pc;
wire         uart_flag_pc;
wire         sending_grpr;
wire         sending_pc;
wire [31:0]  float_pdisps[26:0];
wire [31:0]  float_pfs[26:0];
wire [31:0]  float_tfs[2:0];
wire         flag_in_pdisps;
wire         flag_in_pfs;
wire         flag_in_tfs;
wire [15:0]  fix_pdisps[26:0];
wire         flag_out_pdisps[26:0];
wire [15:0]  fix_pfs[26:0];
wire         flag_out_pfs[26:0];
wire [15:0]  fix_tfs[2:0];
wire         flag_out_tfs[2:0];
wire [7:0]   ptan[8:0];
wire         preprocess_out[8:0];
wire [7:0]   Ngram_out[8:0][N-1:0];
wire         Ngram_out_flag;
wire [D-1:0] HV;
wire         HV_flag;
wire [D-1:0] zpHV;


// ------------------------------system clock--------------------------------
wire sys_clk_o;
IBUFDS sys_clk_ibufgds   
(
    .O  (sys_clk_o),
    .I  (sys_clk_p),
    .IB (sys_clk_n)
);

wire sys_clk;
clk_wiz_0 clk_wiz_0_inst
(
    .clk_out1(sys_clk),
    .clk_in1(sys_clk_o) 
);

// ------------------------------------IOs------------------------------------
uart_rx
#(
    .UART_BPS(UART_BPS),
    .CLK_FREQ(CLK_FREQ)
) uart_rx_pa
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rx(rx_from_pa),

    .po_data(sensor_rx),
    .po_flag(sen_in_flag)
);

uart_rx
#(
    .UART_BPS(GRPR_BPS),
    .CLK_FREQ(CLK_FREQ)
) uart_rx_grpr
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rx(rx_from_gripper),

    .po_data(gripper_msg),
    .po_flag(gm_flag) 
);

uart_rx
#(
    .UART_BPS(GRPR_BPS),
    .CLK_FREQ(CLK_FREQ)
) uart_rx_pc
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rx(rx_from_pc),

    .po_data(oracle_msg),
    .po_flag(om_flag) 
);

packet_sender_gcmd
#(
    .DATA_LENGTH(RAW_CMD_BYTE)
) packet_sender_gcmd_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data_packet(gcrd_cmd),
    .cmd_len(cmd_len),
    .packet_flag(gcrd_flag),
    .tx_busy(tx_busy_grpr),

    .uart_data(uart_data_grpr),
    .uart_flag(uart_flag_grpr),
    .sending(sending_grpr)
);

uart_tx
#(
    .UART_BPS(GRPR_BPS),
    .CLK_FREQ(CLK_FREQ)
) uart_tx_grpr
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .pi_data(uart_data_grpr),
    .pi_flag(uart_flag_grpr),

    .tx(tx_2_gripper),
    .work_en(tx_busy_grpr)
);

data_recorder
#(
    .D(D),
    .N(N),
    .LOG_BIT(LOG_BIT),
    .LOG_LEN(LOG_LEN)
) data_recorder_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .HV(HV),
    .slip_state(slip_state),
    .slip_flag(slip_flag),
    .pillar_fs(fix_pfs),
    .flag_pfs(flag_out_pfs[0]),
    .total_fs(fix_tfs), 
    .flag_tfs(flag_out_tfs[0]),     // later than flag_pfs and flag_pdisps
    .pillar_dis(fix_pdisps), 
    .flag_pds(flag_out_pdisps[0]),

    .data_log(data_log),
    .log_flag(log_flag)
);

packet_sender 
#(
    .DATA_LENGTH(LOG_LEN)
) packet_sender_pc
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data_packet(data_log),
    .packet_flag(log_flag),
    .tx_busy(tx_busy_pc),

    .uart_data(uart_data_pc),
    .uart_flag(uart_flag_pc),
    .sending(sending_pc)
);

uart_tx
#(
    .UART_BPS(UART_BPS),
    .CLK_FREQ(CLK_FREQ)
) uart_tx_pc
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .pi_data(uart_data_pc),
    .pi_flag(uart_flag_pc),

    .tx(tx_2_pc),
    .work_en(tx_busy_pc)
);

// ---------------------------------------preprocess----------------------------------------------
sensor_decoder
#(
    .P_LEN(P_LEN),
    .SEN_F_LEN(SEN_F_LEN),
    .HDR1_LEN(HDR1_LEN),
    .HDR2_LEN(HDR2_LEN)
) sensor_decoder_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .sensor_rx(sensor_rx),
    .sen_in_flag(sen_in_flag),

    .pillar_disps(float_pdisps),
    .pd_flag(flag_in_pdisps),
    .pillar_fs(float_pfs),
    .pf_flag(flag_in_pfs),
    .total_fs(float_tfs),
    .tf_flag(flag_in_tfs)
);

Preprocess Preprocess_inst
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

Ngram_input
#(
    .N(N)
) Ngram_input_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data_in(ptan),
    .flag_in(preprocess_out[0]),

    .Ngram_out(Ngram_out),
    .flag_out(Ngram_out_flag)
);

// -------------------------------------------gstHD encoder----------------------------------------------
gstHD_encoder
#(
    .N(N),
    .D(D),
    .CHAN_NUM(CHAN_NUM),
    .NE_NUM(NE_NUM)
) gstHD_encoder_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawKeys(Ngram_out),
    .flag_in(Ngram_out_flag),

    .HV(HV),
    .HV_flag(HV_flag)
);

// ------------------------------------------slip inference-----------------------------------------------
slip_inference 
#(
    .D(D)
) slip_inference_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .HV(HV),
    .HV_flag(HV_flag),
    .z_press(fix_pdisps[12]),
    .flag_z(flag_out_pdisps[12]),

    .slip_state(slip_state),
    .slip_flag(slip_flag),
    .zpHV(zpHV)
);

// -----------------------------------------control gripper-----------------------------------------------
control_gripper 
#(
    .CLK_FREQ(CLK_FREQ),
    .GC_CMD_BYTE(GC_CMD_BYTE), 
    .GRD_CMD_BYTE(GRD_CMD_BYTE),
    .RAW_CMD_BYTE(RAW_CMD_BYTE)
) control_gripper_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .gripper_msg(gripper_msg),
    .gm_flag(gm_flag),         // gripper_msg flag
    .slip_state(slip_state),
    .z_force(fix_tfs[2]),

    .gcrd_cmd(gcrd_cmd),
    .gcrd_flag(gcrd_flag),
    .cmd_len(cmd_len),
    // .cmdcrc_flag(flag_test)
    .gripper_position(gripper_position)
);

endmodule