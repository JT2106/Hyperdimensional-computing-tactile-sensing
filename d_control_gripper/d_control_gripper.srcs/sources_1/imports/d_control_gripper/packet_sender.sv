`timescale 100ps/100ps
module packet_sender 
#(
    parameter DATA_LENGTH = 'd254
)
(
    input wire       sys_clk,
    input wire       sys_rst_n,
    input wire [7:0] data_packet[DATA_LENGTH-1:0],
    input wire       packet_flag,
    input wire       tx_busy,

    output reg [7:0] uart_data,
    output reg       uart_flag,
    output reg       sending
);

reg [9:0] byte_idx;
// reg       sending;

// sending
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        sending <= 1'b0;
    end else if(packet_flag) begin
        sending <= 1'b1;
    end else if(sending && tx_busy == 1'b0 && byte_idx == DATA_LENGTH) begin
        sending <= 1'b0;
    end
end

// byte_idx
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        byte_idx <= 10'b0;
    end else if(sending && tx_busy == 1'b0 && uart_flag == 1'b0 && byte_idx < DATA_LENGTH) begin
        byte_idx <= byte_idx + 1'b1;
    end else if(uart_flag && byte_idx == DATA_LENGTH) begin
        byte_idx <= 10'b0;
    end
end

// uart_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        uart_flag <= 1'b0;
    end else if(sending && tx_busy == 1'b0 && uart_flag == 1'b0) begin
        uart_flag <= 1'b1;
    end else begin
        uart_flag <= 1'b0;
    end
end

// uart_data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        uart_data <= 8'b0;
    end else if(sending && tx_busy == 1'b0 && uart_flag == 1'b0) begin
        uart_data <= data_packet[DATA_LENGTH-1-byte_idx]; // send highest byte first
    end
end
    
endmodule