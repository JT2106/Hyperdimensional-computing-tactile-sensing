`timescale 100ps/100ps
module add_parallel (
    input wire        sys_clk,
    input wire        sys_rst_n,
    input wire [15:0] x2[8:0],
    input wire [15:0] y2[8:0],
    input wire [15:0] z2[8:0],
    input wire        add_in,

    output reg        add_out,
    output reg [15:0] x2ay2az2[8:0],
    output reg [15:0] x2ay2[8:0]
);

genvar i;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        add_out <= 1'b0;
    end else if(add_in == 1'b1) begin
        add_out <= add_in;
    end else begin
        add_out <= 1'b0;
    end
end

generate
    for (i=0; i<9; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                x2ay2az2[i] <= 16'b0;
                x2ay2[i] <= 16'b0;
            end else if(add_in == 1'b1) begin
                if(x2[i] + y2[i] + z2[i] == 16'b0) begin
                    x2ay2az2[i] <= 16'h0001;
                end else begin
                    x2ay2az2[i] <= x2[i] + y2[i] + z2[i];
                end
                x2ay2[i] <= x2[i] + y2[i];
            end
        end
    end
endgenerate
    
endmodule