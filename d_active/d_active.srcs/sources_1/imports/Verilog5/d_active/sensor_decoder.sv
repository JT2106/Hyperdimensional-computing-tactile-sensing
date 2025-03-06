`timescale 100ps/100ps
module sensor_decoder
#(
    parameter P_LEN = 'd234,
    parameter SEN_F_LEN = 'd14,
    parameter HDR1_LEN = 'd20,
    parameter HDR2_LEN = 'd6
)
(
    input wire       sys_clk,
    input wire       sys_rst_n,
    input wire [7:0] sensor_rx,
    input wire       sen_in_flag,

    output reg [31:0] pillar_disps[26:0],
    output reg        pd_flag,
    output reg [31:0] pillar_fs[26:0],
    output reg        pf_flag,
    output reg [31:0] total_fs[2:0],
    output reg        tf_flag
);

localparam [7:0] HDR1[HDR1_LEN-1:0] = '{'h09,'h00,'h41,'h00,'h5B,'h00,'h75,'h00,'h8F,'h00,'hA9,'h00,'hC3,'h00,'hDD,'h00,'hF7,'h00,'h11,'h01};
localparam [7:0] HDR2[HDR2_LEN-1:0] = '{'h02,'h00,'h2F,'h02,'h49,'h02};

reg [7:0] isHeader1[HDR1_LEN-1:0];
reg [7:0] isHeader2[HDR2_LEN-1:0];
reg [5:0] hdr1_cnt;
reg [3:0] hdr2_cnt;
reg       p_pkt_flag;
reg       s_pkt_flag;
reg       hdr_cmp_flag;
reg [9:0] p_pkt_cnt;
reg [7:0] s_pkt_cnt;
reg [7:0] p_pkt_reg[P_LEN-1:0];
reg [7:0] s_pkt_reg[SEN_F_LEN-1:0];


// hdr1_cnt --> isHeader1
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        hdr1_cnt <= 6'b0;
    end else if(sen_in_flag && hdr1_cnt < HDR1_LEN) begin
        hdr1_cnt <= hdr1_cnt + 1'b1;
    end else if(hdr_cmp_flag && hdr1_cnt == HDR1_LEN && isHeader1 == HDR1) begin
        hdr1_cnt <= HDR1_LEN + 1'b1;
    end else if(p_pkt_flag) begin
        hdr1_cnt <= 6'b0;
    end
end

// isHeader1: is header of pillars' data?
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<HDR1_LEN; i=i+1) begin
            isHeader1[i] <= 8'b0;
        end
    end else if(sen_in_flag && hdr1_cnt < HDR1_LEN) begin
        isHeader1[HDR1_LEN-1-hdr1_cnt] <= sensor_rx;
    end else if(sen_in_flag && hdr1_cnt == HDR1_LEN) begin
        for(int i=0; i<HDR1_LEN-1; i=i+1) begin
            isHeader1[i+1] <= isHeader1[i];
        end
        isHeader1[0] <= sensor_rx;
    end
end

// hdr2_cnt --> isHeader2
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        hdr2_cnt <= 4'b0;
    end else if(sen_in_flag && hdr2_cnt < HDR2_LEN) begin
        hdr2_cnt <= hdr2_cnt + 1'b1;
    end else if(hdr_cmp_flag && hdr2_cnt == HDR2_LEN && isHeader2 == HDR2) begin
        hdr2_cnt <= HDR2_LEN + 1'b1;
    end else if(s_pkt_flag) begin
        hdr2_cnt <= 4'b0;
    end
end

// isHeader2: is header of sensors' data?
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<HDR2_LEN; i=i+1) begin
            isHeader2[i] <= 8'b0;
        end
    end else if(sen_in_flag && hdr2_cnt < HDR2_LEN) begin
        isHeader2[HDR2_LEN-1-hdr2_cnt] <= sensor_rx;
    end else if(sen_in_flag && hdr2_cnt == HDR2_LEN) begin
        for(int i=0; i<HDR2_LEN-1; i=i+1) begin
            isHeader2[i+1] <= isHeader2[i];
        end
        isHeader2[0] <= sensor_rx;
    end
end

// hdr_cmp_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        hdr_cmp_flag <= 1'b0;
    end else if(sen_in_flag) begin
        hdr_cmp_flag <= 1'b1;
    end else begin
        hdr_cmp_flag <= 1'b0;
    end
end

// p_pkt_cnt --> p_pkt_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        p_pkt_cnt <= 10'b0;
    end else if(sen_in_flag && hdr1_cnt == HDR1_LEN+1 && p_pkt_cnt < P_LEN) begin
        p_pkt_cnt <= p_pkt_cnt + 1'b1;
    end  else if(p_pkt_flag) begin
        p_pkt_cnt <= 10'b0;
    end
end

// p_pkt_reg: raw packet of the pillar data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<P_LEN; i=i+1) begin
            p_pkt_reg[i] <= 8'b0;
        end
    end else if(sen_in_flag && hdr1_cnt == HDR1_LEN+1) begin
        p_pkt_reg[P_LEN-1-p_pkt_cnt] <= sensor_rx;
    end
end

// p_pkt_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        p_pkt_flag <= 1'b0;
    end else if(p_pkt_cnt == P_LEN && hdr_cmp_flag) begin
        p_pkt_flag <= 1'b1;
    end else begin
        p_pkt_flag <= 1'b0;
    end
end

// s_pkt_cnt --> s_pkt_reg
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        s_pkt_cnt <= 8'b0;
    end else if(sen_in_flag && hdr2_cnt == HDR2_LEN+1 && s_pkt_cnt < SEN_F_LEN) begin
        s_pkt_cnt <= s_pkt_cnt + 1'b1;
    end  else if(s_pkt_flag) begin
        s_pkt_cnt <= 8'b0;
    end
end

// s_pkt_reg: raw packet of the sensor data
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<SEN_F_LEN; i=i+1) begin
            s_pkt_reg[i] <= 8'b0;
        end
    end else if(sen_in_flag && hdr2_cnt == HDR2_LEN+1) begin
        s_pkt_reg[SEN_F_LEN-1-s_pkt_cnt] <= sensor_rx;
    end
end

// s_pkt_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        s_pkt_flag <= 1'b0;
    end else if(s_pkt_cnt == SEN_F_LEN && hdr_cmp_flag) begin
        s_pkt_flag <= 1'b1;
    end else begin
        s_pkt_flag <= 1'b0;
    end
end

// pillar_disps
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<27; i=i+1) begin
            pillar_disps[i] <= 32'b0;
        end
    end else if(p_pkt_flag) begin
        for(int i=0; i<9; i=i+1) begin
            // [0] = p0_x; [1] = p0_y; [2] = p0_z; [3] = p1_x ...
            pillar_disps[3*i]   <= {p_pkt_reg[(P_LEN-1)-(26*i+5)],  p_pkt_reg[(P_LEN-1)-(26*i+4)],  p_pkt_reg[(P_LEN-1)-(26*i+3)],  p_pkt_reg[(P_LEN-1)-(26*i+2)]};
            pillar_disps[3*i+1] <= {p_pkt_reg[(P_LEN-1)-(26*i+9)],  p_pkt_reg[(P_LEN-1)-(26*i+8)],  p_pkt_reg[(P_LEN-1)-(26*i+7)],  p_pkt_reg[(P_LEN-1)-(26*i+6)]};
            pillar_disps[3*i+2] <= {p_pkt_reg[(P_LEN-1)-(26*i+13)], p_pkt_reg[(P_LEN-1)-(26*i+12)], p_pkt_reg[(P_LEN-1)-(26*i+11)], p_pkt_reg[(P_LEN-1)-(26*i+10)]}; 
        end
    end
end

// pd_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pd_flag <= 1'b0;
    end else if(p_pkt_flag) begin
        pd_flag <= 1'b1;
    end else begin
        pd_flag <= 1'b0;
    end
end

// pillar_fs
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<27; i=i+1) begin
            pillar_fs[i] <= 32'b0;
        end
    end else if(p_pkt_flag) begin
        for(int i=0; i<9; i=i+1) begin
            // [0] = p0_z; [1] = p0_y; [2] = p0_x; [3] = p1_z ...
            pillar_fs[3*i]   <= {p_pkt_reg[(P_LEN-1)-(26*i+17)], p_pkt_reg[(P_LEN-1)-(26*i+16)], p_pkt_reg[(P_LEN-1)-(26*i+15)], p_pkt_reg[(P_LEN-1)-(26*i+14)]};
            pillar_fs[3*i+1] <= {p_pkt_reg[(P_LEN-1)-(26*i+21)], p_pkt_reg[(P_LEN-1)-(26*i+20)], p_pkt_reg[(P_LEN-1)-(26*i+19)], p_pkt_reg[(P_LEN-1)-(26*i+18)]};
            pillar_fs[3*i+2] <= {p_pkt_reg[(P_LEN-1)-(26*i+25)], p_pkt_reg[(P_LEN-1)-(26*i+24)], p_pkt_reg[(P_LEN-1)-(26*i+23)], p_pkt_reg[(P_LEN-1)-(26*i+22)]}; 
        end
    end
end

// pf_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        pf_flag <= 1'b0;
    end else if(p_pkt_flag) begin
        pf_flag <= 1'b1;
    end else begin
        pf_flag <= 1'b0;
    end
end

// total_fs
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        for(int i=0; i<3; i=i+1) begin
            total_fs[i] <= 32'b0;
        end
    end else if(s_pkt_flag) begin
        total_fs[0] <= {s_pkt_reg[(SEN_F_LEN-1)-5],  s_pkt_reg[(SEN_F_LEN-1)-4],  s_pkt_reg[(SEN_F_LEN-1)-3],  s_pkt_reg[(SEN_F_LEN-1)-2]};  // fz
        total_fs[1] <= {s_pkt_reg[(SEN_F_LEN-1)-9],  s_pkt_reg[(SEN_F_LEN-1)-8],  s_pkt_reg[(SEN_F_LEN-1)-7],  s_pkt_reg[(SEN_F_LEN-1)-6]};  // fy
        total_fs[2] <= {s_pkt_reg[(SEN_F_LEN-1)-13], s_pkt_reg[(SEN_F_LEN-1)-12], s_pkt_reg[(SEN_F_LEN-1)-11], s_pkt_reg[(SEN_F_LEN-1)-10]}; // fx
    end
end

// tf_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        tf_flag <= 1'b0;
    end else if(s_pkt_flag) begin
        tf_flag <= 1'b1;
    end else begin
        tf_flag <= 1'b0;
    end
end

endmodule