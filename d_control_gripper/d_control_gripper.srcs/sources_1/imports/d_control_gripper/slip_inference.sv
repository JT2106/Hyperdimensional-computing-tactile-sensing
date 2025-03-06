`timescale 100ps/100ps
module slip_inference 
#(
    parameter D = 'd1000
)
(
    input wire         sys_clk,
    input wire         sys_rst_n,
    input wire [D-1:0] HV,
    input wire         HV_flag,
    input wire [15:0]  z_press,
    input wire         flag_z,

    output reg  [1:0]   slip_state,
    output reg          slip_flag,
    output wire [D-1:0] zpHV
);

localparam [9:0] R1 = D / 2; // 500
localparam [7:0] R2 = R1 / 4; // 125
localparam [5:0] R3 = R2 / 5; // 25
localparam [3:0] R4 = R3 / 5; // 5

reg         init_en;
reg [1:0]   AM_addr;
reg [1:0]   class_idx;
reg [1:0]   zp_lvl;
reg [1:0]   HD_reg1[2:0][R1-1:0];
reg         HD1_flag;
reg [3:0]   HD_reg2[2:0][R2-1:0];
reg         HD2_flag;
reg [5:0]   HD_reg3[2:0][R3-1:0];
reg         HD3_flag;
reg [7:0]   HD_reg4[2:0][R4-1:0];
reg         HD4_flag;
reg [9:0]   HamDis[2:0];
reg         HamDis_flag;
reg [D-1:0] classHVs[2:0];

wire [D-1:0] classHV;
// wire [D-1:0] zpHV;

genvar i;
genvar j;

// AM_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        AM_addr <= 'b0;
    end else if(AM_addr < 'd2) begin
        AM_addr <= AM_addr + 1'b1;
    end
end

// init_en
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        init_en <= 1'b0;
    end else if(class_idx == 2'b0) begin
        init_en <= 1'b1;
    end else if(class_idx == 2'd2) begin
        init_en <= 1'b0;
    end
end

// class_idx
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        class_idx <= 2'b0;
    end else if(init_en && class_idx < 2'd2) begin
        class_idx <= class_idx + 1'b1;
    end
end

// class_HVs
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        classHVs[0] <= 'b0;
        classHVs[1] <= 'b0;
        classHVs[2] <= 'b0;
    end else if(init_en) begin
        classHVs[class_idx] <= classHV;
    end
end

// zp_lvl
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        zp_lvl <= 2'b0;
    end else if(flag_z) begin
        case(z_press)
            16'b0000_0000, 16'b0000_0001, 16'b0000_0010, 16'b0000_0011, 16'b0000_0100, 16'b0000_0101, 16'b0000_0110:
                zp_lvl <= 2'd0;
            16'b0000_0111, 16'b0000_1000:
                zp_lvl <= 2'd1;
            16'b0000_1001:
                zp_lvl <= 2'd2;
            default:
                zp_lvl <= 2'd3;
        endcase
    end
end

// tree-structured adder
// HD_reg1
generate
    for(i=0; i<3; i=i+1) begin
        for(j=0; j<R1; j=j+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    HD_reg1[i][j] <= 'b0;
                end else if(HV_flag) begin
                    HD_reg1[i][j] <= (HV[2*j] ^ ~(classHVs[i][2*j] ^ zpHV[2*j])) + (HV[2*j+1] ^ ~(classHVs[i][2*j+1] ^ zpHV[2*j+1]));
                end
            end
        end
    end
endgenerate

// HD1_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HD1_flag <= 1'b0;
    end else if(HV_flag) begin
        HD1_flag <= HV_flag;
    end else begin
        HD1_flag <= 1'b0;
    end
end

// HD_reg2
generate
    for(i=0; i<3; i=i+1) begin
        for(j=0; j<R2; j=j+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    HD_reg2[i][j] <= 'b0;
                end else if(HD1_flag) begin
                    HD_reg2[i][j] <= HD_reg1[i][4*j] + HD_reg1[i][4*j+1] + HD_reg1[i][4*j+2] + HD_reg1[i][4*j+3];
                end
            end
        end
    end
endgenerate

// HD2_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HD2_flag <= 1'b0;
    end else if(HD1_flag) begin
        HD2_flag <= HD1_flag;
    end else begin
        HD2_flag <= 1'b0;
    end
end

// HD_reg3
generate
    for(i=0; i<3; i=i+1) begin
        for(j=0; j<R3; j=j+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    HD_reg3[i][j] <= 'b0;
                end else if(HD2_flag) begin
                    HD_reg3[i][j] <= HD_reg2[i][5*j] + HD_reg2[i][5*j+1] + HD_reg2[i][5*j+2] + HD_reg2[i][5*j+3] + HD_reg2[i][5*j+4];
                end
            end
        end
    end
endgenerate

// HD3_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HD3_flag <= 1'b0;
    end else if(HD2_flag) begin
        HD3_flag <= HD2_flag;
    end else begin
        HD3_flag <= 1'b0;
    end
end

// HD_reg4
generate
    for(i=0; i<3; i=i+1) begin
        for(j=0; j<R4; j=j+1) begin
            always @(posedge sys_clk or negedge sys_rst_n) begin
                if(sys_rst_n == 1'b0) begin
                    HD_reg4[i][j] <= 'b0;
                end else if(HD3_flag) begin
                    HD_reg4[i][j] <= HD_reg3[i][5*j] + HD_reg3[i][5*j+1] + HD_reg3[i][5*j+2] + HD_reg3[i][5*j+3] + + HD_reg3[i][5*j+4];
                end
            end
        end
    end
endgenerate

// HD4_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HD4_flag <= 1'b0;
    end else if(HD3_flag) begin
        HD4_flag <= HD3_flag;
    end else begin
        HD4_flag <= 1'b0;
    end
end

// HamDis
generate
    for(i=0; i<3; i=i+1) begin
        always @(posedge sys_clk or negedge sys_rst_n) begin
            if(sys_rst_n == 1'b0) begin
                HamDis[i] <= 'b0;
            end else if(HD4_flag) begin
                HamDis[i] <= HamDis[i] + HD_reg4[i][0] + HD_reg4[i][1] + HD_reg4[i][2] + HD_reg4[i][3] + HD_reg4[i][4];
            end else if(HV_flag) begin
                HamDis[i] <= 'b0;
            end
        end
    end
endgenerate

// HamDis_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        HamDis_flag <= 1'b0;
    end else if(HD4_flag) begin
        HamDis_flag <= HD4_flag;
    end else begin
        HamDis_flag <= 1'b0;
    end
end

// slip_state
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slip_state <= 2'b0;
    end else if(HamDis_flag) begin
        if(HamDis[0] < HamDis[1]) begin
            slip_state <= HamDis[0] < HamDis[2] ? 'd1: 'd3;
        end else begin
            slip_state <= HamDis[1] < HamDis[2] ? 'd2: 'd3;
        end
    end
end

// slip_flag
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        slip_flag <= 1'b0;
    end else if(HamDis_flag) begin
        slip_flag <= 1'b1;
    end else begin
        slip_flag <= 1'b0;
    end
end

AM 
#(
    .Dpl(D)
) AM_inst
(
    .sys_clk(sys_clk),
    .AM_addr(AM_addr),
    .classHV(classHV)
);

CM
#(
    .Dpl(D)
) CM_inst
(
    .sys_clk(sys_clk),
    .zp_lvl(zp_lvl),
    .zpHV(zpHV)
);

endmodule

// [0, 0.75] lvl.0
// [0.875, 1] lvl.1
// z == 1.125 lvl.2
// [1.25, +inf) lvl.3