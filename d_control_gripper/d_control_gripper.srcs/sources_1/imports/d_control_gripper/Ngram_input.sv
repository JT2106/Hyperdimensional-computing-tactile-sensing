`timescale 100ps/100ps
module Ngram_input
#(
    parameter N = 4'd15
)
(
    input wire       sys_clk,
    input wire       sys_rst_n,
    input wire [7:0] data_in[8:0],
    input wire       flag_in,

    output reg [7:0] Ngram_out[8:0][N-1:0],
    output reg       flag_out
);

reg [7:0]  Ngram_reg[8:0][N-1:0];
reg        flag_reg;
reg [3:0]  Ncnt;

genvar i;
integer j;

// Ncnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        Ncnt <= 4'b0;
    else if(flag_in && (Ncnt < N))
        Ncnt <= Ncnt + 1'b1;
end

// Ngram_reg[8:0][N-1:0]
generate
    for(i=0; i<9; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                for(j=0; j<N; j=j+1) begin
                    Ngram_reg[i][j] <= 16'b0;
                end
            end else if(flag_in && Ncnt < N) begin
                Ngram_reg[i][Ncnt] <= data_in[i];
            end else if(flag_in && Ncnt == N) begin
                for(j=1; j<N; j=j+1) begin
                    Ngram_reg[i][j-1] <= Ngram_reg[i][j];
                end
                Ngram_reg[i][N-1] <= data_in[i];
            end
        end
    end
endgenerate

// flag_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        flag_reg <= 1'b0;
    else if(flag_in && Ncnt >= N-1)
        flag_reg <= 1'b1;
    else
        flag_reg <= 1'b0;
end

// flag_out
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        flag_out <= 1'b0;
    else if(flag_reg)
        flag_out <= 1'b1;
    else
        flag_out <= 1'b0;
end

// [7:0] Ngram_out[8:0][N-1:0]
generate
    for(i=0; i<9; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                for(j=0; j<N; j=j+1) begin
                    Ngram_out[i][j] <= 16'b0;
                end
            end else if(flag_reg) begin
                for(j=0; j<N; j=j+1) begin
                    Ngram_out[i][j] <= Ngram_reg[i][j];
                end
            end
        end
    end
endgenerate

endmodule