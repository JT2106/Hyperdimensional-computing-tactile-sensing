`timescale 100ps/100ps
module modbus_crc
(
    input wire       sys_clk,
    input wire       sys_rst_n,                
    input wire [7:0] rawcmd_in[14:0],
    input wire       rc_flag,
    input wire [7:0] rawcmd_len,

    output reg [7:0] cmdcrc_out[14:0],
    output reg       cmdcrc_flag
);

localparam POLYNOMIAL = 16'hA001;
localparam INIT_CRC = 16'hFFFF;

reg [15:0] crc_reg;
reg        reg1_flag;
reg        reg2_flag;
reg        reg3_flag;


always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        crc_reg <= INIT_CRC;
    end else if(rc_flag) begin
        crc_reg = INIT_CRC;
        for(int i=0; i<rawcmd_len; i++) begin
            crc_reg = crc_reg ^ (rawcmd_in[15-1-i]);
            for(int j=0; j<8; j++) begin
                if (crc_reg & 16'h0001) begin
                    crc_reg = (crc_reg >> 1) ^ POLYNOMIAL;
                end else begin
                    crc_reg = crc_reg >> 1;
                end
            end
        end
    end
end

// reg_flags
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        reg1_flag <= 1'b0;
        reg2_flag <= 1'b0;
        reg3_flag <= 1'b0;
    end else begin
        reg1_flag <= rc_flag;
        reg2_flag <= reg1_flag;
        reg3_flag <= reg2_flag;
    end
end

// cmdcrc_out
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        for (int i=0; i<15; i++) begin
            cmdcrc_out[15-1-i] <= 8'hFF;
        end
    end else if(reg3_flag) begin
        for (int i=0; i<rawcmd_len; i++) begin
            cmdcrc_out[15-1-i] <= rawcmd_in[15-1-i];
        end
        cmdcrc_out[15-rawcmd_len-1] <= crc_reg[7:0];
        cmdcrc_out[15-rawcmd_len-2] <= crc_reg[15:8];
    end
end

// cmdcrc_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cmdcrc_flag <= 1'b0;
    end else if(reg3_flag) begin
        cmdcrc_flag <= 1'b1;
    end else begin
        cmdcrc_flag <= 1'b0;
    end
end

endmodule
