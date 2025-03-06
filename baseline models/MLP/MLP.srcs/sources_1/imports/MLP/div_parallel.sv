module div_parallel // A/B
#(
    parameter P = 'd3
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] dividend[P-1:0], // A
    input  wire [31:0] divisor,         // B
    input  wire        divin_flag,

    output wire [31:0] div_output[P-1:0],
    output wire        do_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        div div_parallel (
            .aclk(sys_clk),                                 
            .aresetn(sys_rst_n),                           
            .s_axis_a_tvalid(divin_flag),           
            .s_axis_a_tdata(dividend[i]),             
            .s_axis_b_tvalid(divin_flag),           
            .s_axis_b_tdata(divisor),  
                       
            .m_axis_result_tvalid(do_flag[i]), 
            .m_axis_result_tdata(div_output[i])
        );
    end
endgenerate

endmodule