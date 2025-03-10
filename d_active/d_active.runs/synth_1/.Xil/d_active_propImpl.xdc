set_property SRC_FILE_INFO {cfile:f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/d_active/d_active.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../d_active.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_wiz_0_inst/inst} [current_design]
set_property SRC_FILE_INFO {cfile:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog5/d_active/d_active.xdc rfile:../../../../../Verilog5/d_active/d_active.xdc id:2} [current_design]
current_instance clk_wiz_0_inst/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.050
current_instance
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R4 [get_ports sys_clk_p]
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T6 [get_ports sys_rst_n]
set_property src_info {type:XDC file:2 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B20 [get_ports tx_2_pc]
set_property src_info {type:XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E19 [get_ports rx_from_pc]
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F21 [get_ports rx_from_pa]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y12 [get_ports rx_from_gripper]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11 [get_ports tx_2_gripper]
