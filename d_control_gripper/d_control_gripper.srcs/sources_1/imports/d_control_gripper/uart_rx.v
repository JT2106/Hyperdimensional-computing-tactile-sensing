// FPGA receive data from UART
module uart_rx
#(
    parameter UART_BPS = 'd9600,
    parameter CLK_FREQ = 'd50_000_000
)
(
    input wire sys_clk, // 50MHz
    input wire sys_rst_n, // system global reset
    input wire rx,

    output reg [7:0] po_data, // 8 bit output data
    output reg       po_flag  // 8 bit putput ready flag
);

localparam BAUD_CNT_MAX = CLK_FREQ / UART_BPS;

reg        rx_reg1;
reg        rx_reg2;
reg        rx_reg3;
reg        start_nedge;
reg        work_en;
reg [12:0] baud_cnt;
reg        bit_flag;
reg [3:0]  bit_cnt;
reg [7:0]  rx_data;
reg        rx_flag;

// Two register rx_reg1 and rx_reg2 inserted for sub-stability elimination
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_reg1 <= 1'b1;
    else
        rx_reg1 <= rx;
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_reg2 <= 1'b1;
    else
        rx_reg2 <= rx_reg1;
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_reg3 <= 1'b1;
    else
        rx_reg3 <= rx_reg2;
end

// rx_reg3 and rx_reg4 together form the falling edge detection
// Pull up start_nedge for one clk cycle when falling edge is detected
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        start_nedge <= 1'b0;
    else if((~rx_reg2) && (rx_reg3))
        start_nedge <= 1'b1;
    else
        start_nedge <= 1'b0;
end

// work_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        work_en <= 1'b0;
    else if(start_nedge == 1'b1)
        work_en <= 1'b1;
    else if((bit_cnt == 4'd8) && (bit_flag))
        work_en <= 1'b0;
end

// baud_cnt: count baud rate using sys_clk
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        baud_cnt <= 13'b0;
    else if((baud_cnt == BAUD_CNT_MAX - 1) || (!work_en))
        baud_cnt <= 13'b0;
    else if(work_en == 1'b1)
        baud_cnt <= baud_cnt + 1'b1;
end

// bit_flag: when baud_cnt = BAUD_CNT_MAX/2 -1, data for the bit is stable
// bit_flag will be pull up for one clk cycle indicating data for the bit accessable
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        bit_flag <= 1'b0;
    else if(baud_cnt == BAUD_CNT_MAX/2 - 1)
        bit_flag <= 1'b1;
    else
        bit_flag <= 1'b0;
end

// count the received bits, 0 after reaching 8
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        bit_cnt <= 4'b0;
    else if((bit_cnt == 4'd8) && (bit_flag))
        bit_cnt <= 4'b0;
     else if(bit_flag)
         bit_cnt <= bit_cnt + 1'b1;
end

// Shift to form 8 bit data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_data <= 8'b0;
    else if((bit_cnt >= 4'd1)&&(bit_cnt <= 4'd8)&&(bit_flag))
        rx_data <= {rx_reg3, rx_data[7:1]};
end

// Pull up rx_flag for one clk cycle when rx_data is ready
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_flag <= 1'b0;
    else if((bit_cnt == 4'd8) && (bit_flag))
        rx_flag <= 1'b1;
    else
        rx_flag <= 1'b0;
end

// po_data: output 8 bit valid data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        po_data <= 8'b0;
    else if(rx_flag)
        po_data <= rx_data;
end

// Pull up po_flag for one clk cycle for valid po_data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        po_flag <= 1'b0;
    else
        po_flag <= rx_flag;
end

endmodule