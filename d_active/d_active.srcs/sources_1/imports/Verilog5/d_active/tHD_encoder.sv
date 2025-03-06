`timescale 100ps/100ps
module tHD_encoder
#(
    parameter N = 'd15,
    parameter D = 'd1000
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [D-1:0] gsbin_HD,
    input wire         gsbin_flag,

    output reg [D-1:0] HV,
    output reg         HV_flag
);

reg [D-1:0] gsHVs[N-1:0];
reg [3:0]   Ncnt;
reg         flag_reg;

integer j;

// Ncnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        Ncnt <= 4'b0;
    else if(gsbin_flag && (Ncnt < N))
        Ncnt <= Ncnt + 1'b1;
end

// gsHVs
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(j=0; j<N; j=j+1) begin
            gsHVs[j] <= 'b0;
        end
    end else if(gsbin_flag && Ncnt < N) begin
        gsHVs[Ncnt] <= gsbin_HD;
    end else if(gsbin_flag && Ncnt == N) begin
        for(j=1; j<N; j=j+1) begin
            gsHVs[j-1] <= gsbin_HD[j];
        end
        gsHVs[N-1] <= gsbin_HD;
    end
end

// flag_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        flag_reg <= 1'b0;
    end else if(gsbin_flag) begin
        flag_reg <= 1'b1;
    end else begin
        flag_reg <= 1'b0;
    end
end

// HV
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HV <= 'b0;
    end else if(flag_reg) begin
        HV <= {gsHVs[0][13:0], gsHVs[0][D-1:14]} ^
              {gsHVs[1][12:0], gsHVs[1][D-1:13]} ^
              {gsHVs[2][11:0], gsHVs[2][D-1:12]} ^
              {gsHVs[3][10:0], gsHVs[3][D-1:11]} ^
              {gsHVs[4][9:0], gsHVs[4][D-1:10]} ^
              {gsHVs[5][8:0], gsHVs[5][D-1:9]} ^
              {gsHVs[6][7:0], gsHVs[6][D-1:8]} ^
              {gsHVs[7][6:0], gsHVs[7][D-1:7]} ^
              {gsHVs[8][5:0], gsHVs[8][D-1:6]} ^
              {gsHVs[9][4:0], gsHVs[9][D-1:5]} ^
              {gsHVs[10][3:0], gsHVs[10][D-1:4]} ^
              {gsHVs[11][2:0], gsHVs[11][D-1:3]} ^
              {gsHVs[12][1:0], gsHVs[12][D-1:2]} ^
              {gsHVs[13][0], gsHVs[13][D-1:1]} ^
              gsHVs[14];
    end
end

// HV_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HV_flag <= 1'b0;
    end else if(flag_reg) begin
        HV_flag <= 1'b1;
    end else begin
        HV_flag <= 1'b0;
    end
end

endmodule