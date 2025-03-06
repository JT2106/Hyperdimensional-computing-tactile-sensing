module div_parallel2 // A/B
#(
    parameter P = 'd8
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] dividend[P-1:0], // A
    input  wire [31:0] divisor[P-1:0],         // B
    input  wire        divin_flag[P-1:0],

    output wire [31:0] div_output[P-1:0],
    output wire        do_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        div div_parallel2 (
            .aclk(sys_clk),                                 
            .aresetn(sys_rst_n),                           
            .s_axis_a_tvalid(divin_flag[i]),           
            .s_axis_a_tdata(dividend[i]),             
            .s_axis_b_tvalid(divin_flag[i]),           
            .s_axis_b_tdata(divisor[i]),
                       
            .m_axis_result_tvalid(do_flag[i]), 
            .m_axis_result_tdata(div_output[i])
        );
    end
endgenerate

endmodule