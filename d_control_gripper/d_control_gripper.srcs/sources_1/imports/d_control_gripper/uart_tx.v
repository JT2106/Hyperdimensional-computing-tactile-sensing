// Output classification results via UART
module uart_tx
#(
    parameter UART_BPS = 'd9600,
    parameter CLK_FREQ = 'd50_000_000
)
(
    input wire       sys_clk,
    input wire       sys_rst_n,
    input wire [7:0] pi_data,
    input wire       pi_flag,

    output reg       tx,
    output reg       work_en
);

localparam BAUD_CNT_MAX = CLK_FREQ / UART_BPS;

reg [12:0] baud_cnt;
reg        bit_flag;
reg [3:0]  bit_cnt;
// reg        work_en;

// work_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
            work_en <= 1'b0;
        else if(pi_flag)
            work_en <= 1'b1;
        else if((bit_flag) && (bit_cnt == 4'd10))
            work_en <= 1'b0;
end

// baud_cnt: count baud rate using sys_clk
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        baud_cnt <= 13'b0;
    else if((baud_cnt == BAUD_CNT_MAX -1) || (!work_en))
        baud_cnt <= 13'b0;
    else if(work_en)
        baud_cnt <= baud_cnt + 1'b1;
end

// Pull up bit_flag for one clk cycle when bit_cnt = 1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        bit_flag <= 1'b0;
    else if(baud_cnt == 13'd1)
        bit_flag <= 1'b1;
    else
        bit_flag <= 1'b0;
end

// count the bits, 0 after reaching 9
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        bit_cnt <= 4'b0;
    else if((bit_flag) && (bit_cnt == 4'd10))
        bit_cnt <= 4'b0;
    else if(bit_flag && work_en)
        bit_cnt <= bit_cnt + 1'b1;
end

// load data to tx
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx <= 1'b1;
    else if(bit_flag) begin
        case(bit_cnt)
            0       : tx <= 1'b0;
            1       : tx <= pi_data[0];
            2       : tx <= pi_data[1];
            3       : tx <= pi_data[2];
            4       : tx <= pi_data[3];
            5       : tx <= pi_data[4];
            6       : tx <= pi_data[5];
            7       : tx <= pi_data[6];
            8       : tx <= pi_data[7];
            9       : tx <= 1'b1;
            default : tx <= 1'b1;
        endcase
    end
end

endmodule