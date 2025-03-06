`timescale 100ps/100ps
module mult_parallel
#(
    parameter P = 'd64
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] fea,
    input  wire [31:0] w[P-1:0],
    input  wire        w_flag,

    output wire [31:0] mult_out[P-1:0],
    output wire        mo_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        mult mult_parallel (
          .aclk(sys_clk),                               
          .aresetn(sys_rst_n),                         
          .s_axis_a_tvalid(w_flag),         
          .s_axis_a_tdata(fea),           
          .s_axis_b_tvalid(w_flag),         
          .s_axis_b_tdata(w[i]),

          .m_axis_result_tvalid(mo_flag[i]),
          .m_axis_result_tdata(mult_out[i])  
        );
    end
endgenerate

endmodule