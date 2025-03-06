`timescale 100ps/100ps
module data_recorder
#(
    parameter D = 'd1000,
    parameter N = 'd15,
    parameter LOG_BIT = 16+(16*27*N)+16+1000+16+8+16,
    parameter LOG_LEN = LOG_BIT / 8
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [D-1:0] HV,
    input wire [7:0]   slip_state,
    input wire         slip_flag,
    input wire [15:0]  pillar_fs[26:0],
    input wire         flag_pfs,
    input wire [15:0]  total_fs[2:0], 
    input wire         flag_tfs,         // later than flag_pfs and flag_pdisps
    input wire [15:0]  pillar_dis[26:0], 
    input wire         flag_pds,

    output reg [7:0] data_log[LOG_LEN-1:0],
    output reg       log_flag
);

reg [15:0]        pfs_alln[26:0][N-1:0];
reg [15:0]        pds_alln[26:0][N-1:0];
reg [15:0]        tfs_alln[2:0][N-1:0];
reg [16*27*N-1:0] pfs_pkd;
reg [16*27*N-1:0] pds_pkd;
reg [16*3*N-1:0]  tfs_pkd;
reg               pfs_pk_flag;
reg               pds_pk_flag;
reg               tfs_pk_flag;
reg [3:0]         Ncnt;
reg               Ncnt_flag;
reg [LOG_BIT-1:0] log_reg;
reg               logreg_flag;

genvar i;
genvar k;

// Ncnt_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Ncnt_flag <= 1'b0;
    end else if(tfs_pk_flag) begin
        Ncnt_flag <= 1'b1;
    end else begin
        Ncnt_flag <= 1'b0;
    end
end

// Ncnt
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        Ncnt <= 4'b0;
    end else if(Ncnt_flag && Ncnt < N) begin
        Ncnt <= Ncnt + 1'b1;
    end
end

// pfs_alln
generate
    for(i=0; i<27; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                for(int j=0; j<N; j=j+1) begin
                    pfs_alln[i][j] <= 16'b0;
                end
            end else if(flag_pfs && Ncnt < N) begin
                pfs_alln[i][Ncnt] <= pillar_fs[i];
            end else if(flag_pfs && Ncnt == N) begin
                for(int j=1; j<N; j=j+1) begin
                    pfs_alln[i][j-1] <= pfs_alln[i][j];
                end
                pfs_alln[i][N-1] <= pillar_fs[i];
            end
        end
    end
endgenerate

// pds_alln
generate
    for(i=0; i<27; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                for(int j=0; j<N; j=j+1) begin
                    pds_alln[i][j] <= 16'b0;
                end
            end else if(flag_pds && Ncnt < N) begin
                pds_alln[i][Ncnt] <= pillar_dis[i];
            end else if(flag_pds && Ncnt == N) begin
                for(int j=1; j<N; j=j+1) begin
                    pds_alln[i][j-1] <= pfs_alln[i][j];
                end
                pds_alln[i][N-1] <= pillar_dis[i];
            end
        end
    end
endgenerate

// tfs_alln
generate
    for(i=0; i<3; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                for(int j=0; j<N; j=j+1) begin
                    tfs_alln[i][j] <= 16'b0;
                end
            end else if(flag_tfs && Ncnt < N) begin
                tfs_alln[i][Ncnt] <= total_fs[i];
            end else if(flag_tfs && Ncnt == N) begin
                for(int j=1; j<N; j=j+1) begin
                    tfs_alln[i][j-1] <= tfs_alln[i][j];
                end
                tfs_alln[i][N-1] <= total_fs[i];
            end
        end
    end
endgenerate

// pfs_pk_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pfs_pk_flag <= 1'b0;
    end else if(flag_pfs) begin
        pfs_pk_flag <= 1'b1;
    end else begin
        pfs_pk_flag <= 1'b0;
    end
end
// pds_pk_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pds_pk_flag <= 1'b0;
    end else if(flag_pds) begin
        pds_pk_flag <= 1'b1;
    end else begin
        pds_pk_flag <= 1'b0;
    end
end

// tfs_pk_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        tfs_pk_flag <= 1'b0;
    end else if(flag_tfs) begin
        tfs_pk_flag <= 1'b1;
    end else begin
        tfs_pk_flag <= 1'b0;
    end
end

// pfs_pkd
generate
    for(i=0; i<27; i=i+1) begin
        for(k=0; k<N; k=k+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    pfs_pkd[15+16*i+16*27*k:16*i+16*27*k] <= 'b0;
                end else if(pfs_pk_flag) begin
                    pfs_pkd[15+16*i+16*27*k:16*i+16*27*k] <= pfs_alln[i][k];
                end
            end
        end
    end
endgenerate

// pds_pkd
generate
    for(i=0; i<27; i=i+1) begin
        for(k=0; k<N; k=k+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    pds_pkd[15+16*i+16*27*k:16*i+16*27*k] <= 'b0;
                end else if(pds_pk_flag) begin
                    pds_pkd[15+16*i+16*27*k:16*i+16*27*k] <= pds_alln[i][k];
                end
            end
        end
    end
endgenerate

// tfs_pkd
generate
    for(i=0; i<3; i=i+1) begin
        for(k=0; k<N; k=k+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    tfs_pkd[15+16*i+16*3*k:16*i+16*3*k] <= 'b0;
                end else if(tfs_pk_flag) begin
                    tfs_pkd[15+16*i+16*3*k:16*i+16*3*k] <= tfs_alln[i][k];
                end
            end
        end
    end
endgenerate

// log_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        log_reg <= 'b0;
    end else if(slip_flag) begin
        log_reg <= {16'hCC22, pds_pkd, 16'hCCDD, HV, 16'hCCAA, slip_state, 16'h0D0A};
    end
end

// logreg_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        logreg_flag <= 1'b0;
    end else if(slip_flag) begin
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