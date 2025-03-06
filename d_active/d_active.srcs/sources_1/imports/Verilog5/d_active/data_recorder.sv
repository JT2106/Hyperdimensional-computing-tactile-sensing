`timescale 100ps/100ps
module data_recorder
#(
    parameter D = 'd1000,
    parameter N = 'd15,
    parameter LOG_BIT = 16+8+16+8+16+1000+16, // {16'hCCAA, slip_state, 16'hCCAA, items, 16'hCCDD, itemHV, 16'h0D0A}
    parameter LOG_LEN = LOG_BIT / 8
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [7:0]   slip_state,
    input wire         slip_flag,
    input wire [7:0]   items,
    input wire         item_flag,
    input wire [D-1:0] itemHV,

    output reg [7:0] data_log[LOG_LEN-1:0],
    output reg       log_flag
);

genvar i;

reg [LOG_BIT-1:0] log_reg;
reg               logreg_flag;

// log_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        log_reg <= 'b0;
    end else if(slip_flag || item_flag) begin
        log_reg <= {16'hCCAA, slip_state, 16'hCCAA, items, 16'hCCDD, itemHV, 16'h0D0A};
    end
end

// logreg_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        logreg_flag <= 1'b0;
    end else if(slip_flag || item_flag) begin
        logreg_flag <= 1'b1;
    end else begin
        logreg_flag <= 1'b0;
    end
end

// data_log
generate
    for(i=0; i<LOG_LEN; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                data_log[i] <= 'b0;
            end else if(logreg_flag) begin
                data_log[i] <= log_reg[8*i+7:8*i];
            end
        end 
    end
endgenerate

// log_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        log_flag <= 1'b0;
    end else if(logreg_flag) begin
        log_flag <= 1'b1;
    end else begin
        log_flag <= 1'b0;
    end
end

endmodule