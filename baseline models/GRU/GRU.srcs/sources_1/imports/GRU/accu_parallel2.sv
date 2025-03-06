`timescale 100ps/100ps
module accu_parallel2
#(
    parameter P = 'd64
)
(
    input  wire        sys_clk,
    input  wire        sys_rst_n,
    input  wire [31:0] accu_in[P-1:0],
    input  wire        ai_flag[P-1:0],
    input  wire        last_flag[P-1:0],

    output wire [31:0] accu_out[P-1:0],
    output wire        accu_valid[P-1:0],
    output wire        ao_flag[P-1:0]
);

genvar i;
generate
    for (i=0; i<P; i=i+1) begin
        accu accu_parallel2 (
          .aclk(sys_clk),                                 
          .aresetn(sys_rst_n),                           
          .s_axis_a_tvalid(ai_flag[i]),           
          .s_axis_a_tdata(accu_in[i]),             
          .s_axis_a_tlast(last_flag[i]),      

          .m_axis_result_tvalid(accu_valid[i]), 
          .m_axis_result_tdata(accu_out[i]),   
          .m_axis_result_tlast(ao_flag[i])    
        );
    end
endgenerate

endmodule