`timescale 100ps/100ps
module tb_GRU
#(
    parameter N = 'd15,
    parameter INPUT_SIZE = 'd9,
    parameter HIDDEN_UNITS = 'd8,
    parameter NODE_NUM_L0 = INPUT_SIZE + HIDDEN_UNITS,
    parameter NODE_NUM_L1 = HIDDEN_UNITS,
    parameter NODE_NUM_L2 = 'd3,
    parameter NODE_NUM_MAX = NODE_NUM_L1 > NODE_NUM_L2 ? NODE_NUM_L1 : NODE_NUM_L2
) 
();

reg       sys_clk;
reg       sys_rst_n;
reg [7:0] rawKeys[8:0][N-1:0];
reg       flag_in;

wire [1:0] slip_state;
wire       slip_flag;

integer i;
integer j;

initial begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;

    #1000
    sys_rst_n <= 1'b1;
    #500
    for(i=0; i<9; i=i+1) begin
        for(j=0; j<N; j=j+1) begin
            rawKeys[i][j] <= 8'b0111_0001 + i;
        end
    end
    flag_in <= 1'b1;
    #100
    flag_in <= 1'b0;
end

always #50 sys_clk = ~sys_clk;

GRU 
#(
    .N(N),
    .INPUT_SIZE(INPUT_SIZE),
    .HIDDEN_UNITS(HIDDEN_UNITS),
    .NODE_NUM_L0(NODE_NUM_L0),
    .NODE_NUM_L1(NODE_NUM_L1),
    .NODE_NUM_L2(NODE_NUM_L2),
    .NODE_NUM_MAX(NODE_NUM_MAX)
) GRU_sim 
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rawKeys(rawKeys),
    .flag_in(flag_in),

    .slip_state(slip_state),
    .slip_flag(slip_flag)
);
    
endmodule