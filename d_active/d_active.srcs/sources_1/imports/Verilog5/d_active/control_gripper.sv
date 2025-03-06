`timescale 100ps/100ps
module control_gripper 
#(
    parameter CLK_FREQ = 'd100_000_000,
    parameter GC_CMD_BYTE = 'd15, // gripper control cmd byte
    parameter GRD_CMD_BYTE = 'd8, // gripper read cmd byte
    parameter RAW_CMD_BYTE = GC_CMD_BYTE > GRD_CMD_BYTE ? GC_CMD_BYTE : GRD_CMD_BYTE
) 
(
    input wire        sys_clk,
    input wire        sys_rst_n,
    input wire [7:0]  gripper_msg,
    input wire        gm_flag,     // gripper_msg flag
    input wire [1:0]  slip_state,
    input wire [15:0] z_force,

    output reg [7:0] gcrd_cmd[RAW_CMD_BYTE-1:0],
    output reg       gcrd_flag,
    output reg [7:0] cmd_len,
    // output wire      cmdcrc_flag
    output reg [7:0] gripper_position
);

localparam GRPPR_FREQ = 'd100;
localparam CMDRATE_CNT_MAX = CLK_FREQ / (GRPPR_FREQ / 2);
localparam [7:0] GM_HEADER[1:0] = '{'h09, 'h04}; // header of the gripper message after gripper read cmd

reg [3:0]  hdr_cnt;
reg [3:0]  msg_cnt;
reg [7:0]  isHeader[1:0];
// reg [7:0]  gripper_position; // msg_cnt == 5
reg        hdr_cmp_flag;
reg [31:0] cmdrate_cnt;
reg [7:0]  raw_cmd[RAW_CMD_BYTE-1:0];
reg        rc_flag;
reg [7:0]  rawcmd_len;

wire [7:0] cmdcrc_out[RAW_CMD_BYTE-1:0];
wire       cmdcrc_flag;

// hdr_cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        hdr_cnt <= 4'b0;
    end else if(gm_flag && hdr_cnt < 4'd2) begin
        hdr_cnt <= hdr_cnt + 1'b1;
    end else if(hdr_cmp_flag && hdr_cnt == 4'd2 && isHeader == GM_HEADER) begin
        hdr_cnt <= 4'hf;
    end else if(gcrd_flag) begin
        hdr_cnt <= 4'b0;
    end
end

// isHeader
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<2; i=i+1) begin
            isHeader[i] <= 8'b0;
        end
    end else if(gm_flag && hdr_cnt < 4'd2) begin
        isHeader[2-1-hdr_cnt] <= gripper_msg;
    end else if(gm_flag && hdr_cnt == 4'd2) begin
        for(int i=0; i<2-1; i=i+1) begin
            isHeader[i+1] <= isHeader[i];
        end
        isHeader[0] <= gripper_msg;
    end
end

// hdr_cmp_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        hdr_cmp_flag = 1'b0;
    end else if(gm_flag) begin
        hdr_cmp_flag = 1'b1;
    end else begin
        hdr_cmp_flag = 1'b0;
    end
end

// msg_cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        msg_cnt <= 4'b0;
    end else if(gm_flag && hdr_cnt == 4'hf && msg_cnt < 4'hf) begin
        msg_cnt <= msg_cnt + 1'b1;
    end else if(gcrd_flag) begin
        msg_cnt <= 4'b0;
    end
end

// gripper_position
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gripper_position <= 8'b0;
    end else if(gm_flag && msg_cnt == 4'd5) begin
        gripper_position <= gripper_msg;
    end
end

// cmdrate_cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cmdrate_cnt <= 'b0;
    end else if(cmdrate_cnt == CMDRATE_CNT_MAX-1) begin
        cmdrate_cnt <= 'b0;
    end else begin
        cmdrate_cnt <= cmdrate_cnt + 1'b1;
    end
end

// raw_cmd
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<RAW_CMD_BYTE; i=i+1) begin
            raw_cmd[i] <= 8'b0;
        end
    end else if(cmdrate_cnt == 1) begin
        raw_cmd <= '{'h09,'h04,'h07,'hD0,'h00,'h03,'h00,'h00,'h00,'h00,'h00,'h00,'h00,'h00,'h00};
    end else if(cmdrate_cnt == CMDRATE_CNT_MAX/2+1) begin
        if(z_force[15] == 1'b1 || z_force < 16'b0000_0000_0010_0000) begin
            raw_cmd <= '{'h09,'h10,'h03,'hE8,'h00,'h03,'h06,'h09,'h00,'h00, (gripper_position+1),'h00,'h00,'h00,'h00};
        end else begin
            case(slip_state)
                'h01:    raw_cmd <= '{'h09,'h10,'h03,'hE8,'h00,'h03,'h06,'h09,'h00,'h00, (gripper_position),'h00,'h00,'h00,'h00}; 
                'h02:    raw_cmd <= '{'h09,'h10,'h03,'hE8,'h00,'h03,'h06,'h09,'h00,'h00, (gripper_position+1),'h00,'h00,'h00,'h00};
                'h03:    raw_cmd <= '{'h09,'h10,'h03,'hE8,'h00,'h03,'h06,'h09,'h00,'h00, (gripper_position+1),'h00,'h00,'h00,'h00};
                default: raw_cmd <= '{'h09,'h10,'h03,'hE8,'h00,'h03,'h06,'h09,'h00,'h00, (gripper_position),'h00,'h00,'h00,'h00};
            endcase
        end
    end
end

// rc_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        rc_flag <= 1'b0;
    end else if(cmdrate_cnt == 1 || cmdrate_cnt == CMDRATE_CNT_MAX/2+1) begin
        rc_flag <= 1'b1;
    end else begin
        rc_flag <= 1'b0;
    end
end

// rawcmd_len
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        rawcmd_len <= 8'b0;
    end else if(cmdrate_cnt == 0) begin
        rawcmd_len <= GRD_CMD_BYTE - 2;
    end else if(cmdrate_cnt == CMDRATE_CNT_MAX/2) begin
        rawcmd_len <= GC_CMD_BYTE - 2;
    end
end

// cmd_len
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        cmd_len <= 8'b0;
    end else if(cmdrate_cnt == 0) begin
        cmd_len <= GRD_CMD_BYTE;
    end else if(cmdrate_cnt == CMDRATE_CNT_MAX/2) begin
        cmd_len <= GC_CMD_BYTE;
    end
end

// gcrd_cmd
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<RAW_CMD_BYTE; i=i+1) begin
            gcrd_cmd[i] <= 8'b0;
        end
    end else if(cmdcrc_flag) begin
        gcrd_cmd <= cmdcrc_out;
    end
end

// gcrd_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gcrd_flag <= 1'b0;
    end else if(cmdcrc_flag) begin
        gcrd_flag <= 1'b1;
    end else begin
        gcrd_flag <= 1'b0;
    end
end

modbus_crc modbus_crc_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),     
    .rawcmd_in(raw_cmd),
    .rc_flag(rc_flag),
    .rawcmd_len(rawcmd_len),
    
    .cmdcrc_out(cmdcrc_out),
    .cmdcrc_flag(cmdcrc_flag)
);

endmodule