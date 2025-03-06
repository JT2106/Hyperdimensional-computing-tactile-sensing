`timescale 100ps/100ps
module float2fix_pdisps (
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] data[26:0],
    input  wire        flag_in,

    output wire        flag_out[26:0],
    output wire [15:0] fix_data[26:0]
);

genvar i;
generate
    for (i=0; i<27; i=i+1) begin: loop
        float2fix float2fix_inst0 (
            .sys_clk(sys_clk),
            .sys_rst_n(sys_rst_n),
            .float(data[i]),
            .flag_in(flag_in),
            
            .flag_out(flag_out[i]),
            .fix(fix_data[i])
        );
    end
endgenerate
    
endmodule