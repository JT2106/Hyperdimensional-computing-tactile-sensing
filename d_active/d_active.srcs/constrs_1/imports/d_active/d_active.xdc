############## NET - IOSTANDARD #####################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting#################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 
############## clock define##########################
create_clock -period 5 [get_ports sys_clk_p]
set_property PACKAGE_PIN R4 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
##############reset key define########################
set_property PACKAGE_PIN T6 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports sys_rst_n]
############## usb uart define########################
## uart-ttl_1 ##
# J5_38 / J5_37 is GND
# J5_40 / J5_39 is 3V3
# J5_36 --> EX_IO2_17P --> B16_L14_P --> E19 is rx
# J5_34 --> EX_IO2_16P --> B16_L16_P --> B20 is tx
set_property IOSTANDARD LVCMOS33 [get_ports tx_2_pc] 
set_property PACKAGE_PIN B20 [get_ports tx_2_pc]
set_property IOSTANDARD LVCMOS33 [get_ports rx_from_pc] 
set_property PACKAGE_PIN E19 [get_ports rx_from_pc]

## uart-ttl_2 ##
# J4_38 / J4_37 is GND
# J4_40 / J4_39 is 3V3
# J4_36 --> EX_IO1_17P --> B16_IO25 -->  F21 is rx
# J4_34 --> EX_IO1_16P --> B16_L21_P --> B21 is tx
set_property IOSTANDARD LVCMOS33 [get_ports rx_from_pa]
set_property PACKAGE_PIN F21 [get_ports rx_from_pa]

## uart-usb ##
set_property IOSTANDARD LVCMOS33 [get_ports rx_from_gripper]
set_property PACKAGE_PIN Y12 [get_ports rx_from_gripper]

set_property IOSTANDARD LVCMOS33 [get_ports tx_2_gripper]
set_property PACKAGE_PIN Y11 [get_ports tx_2_gripper]