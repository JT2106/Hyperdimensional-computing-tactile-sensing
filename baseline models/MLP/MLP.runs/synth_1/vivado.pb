
�
Sourcing tcl script '%s'
201*common2C
/E:/Xilinx/Vivado/2023.1/scripts/Vivado_init.tcl2default:defaultZ17-201h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:052default:default2
456.0592default:default2
159.4532default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental F:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.srcs/utils_1/imports/synth_1/MLP.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2k
WF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.srcs/utils_1/imports/synth_1/MLP.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top MLP -part xc7a200tfbg484-22default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a200tfbg484-22default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
83282default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
w_flag2default:default2
wire2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1792default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1340.711 ; gain = 411.883
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
MLP2default:default2
 2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
22default:default8@Z8-6157h px� 
�
default block is never used226*oasys2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
4472default:default8@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2
L1_ROMs2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/L1_ROMs.sv2default:default2
22default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter NUM bound to: 64 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
L1_ROM2default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L1_ROM/synth/L1_ROM.vhd2default:default2
672default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_XDEVICEFAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 3 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:defaulth p
x
� 
u
%s
*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_INIT_FILE bound to: L1_ROM.mem - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_WRITE_DEPTH_A bound to: 136 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_DEPTH_A bound to: 136 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_WRITE_DEPTH_B bound to: 136 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_DEPTH_B bound to: 136 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRB_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_EN_ECC_PIPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_EN_SLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_URAM bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRA_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRB_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_EN_DEEPSLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_EN_SHUTDOWN_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_EN_SAFETY_CKT bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_36K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 1 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     3.375199 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L2_ROM/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L1_ROM/synth/L1_ROM.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
L1_ROM2default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L1_ROM/synth/L1_ROM.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
L1_ROMs2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/L1_ROMs.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
L2_ROMs2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/L2_ROMs.sv2default:default2
22default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter NUM bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
L2_ROM2default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L2_ROM/synth/L2_ROM.vhd2default:default2
672default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_XDEVICEFAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 3 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:defaulth p
x
� 
u
%s
*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_INIT_FILE bound to: L2_ROM.mem - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_DEPTH_A bound to: 65 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_DEPTH_A bound to: 65 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRA_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_DEPTH_B bound to: 65 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_DEPTH_B bound to: 65 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRB_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_EN_ECC_PIPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_EN_SLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_URAM bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRA_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRB_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_EN_DEEPSLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_EN_SHUTDOWN_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_EN_SAFETY_CKT bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_36K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 1 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     3.375199 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L2_ROM/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L2_ROM/synth/L2_ROM.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
L2_ROM2default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/L2_ROM/synth/L2_ROM.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
L2_ROMs2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/L2_ROMs.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
fix2float_inputs2default:default2
 2default:default2]
GF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/fix2float_inputs.sv2default:default2
22default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter N bound to: 15 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2#
fix2float_input2default:default2
 2default:default2�
kf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/fix2float_input/synth/fix2float_input.v2default:default2
532default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT12default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
794302default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT12default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
794302default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
fix2float_input2default:default2
 2default:default2
02default:default2
12default:default2�
kf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/fix2float_input/synth/fix2float_input.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
fix2float_inputs2default:default2
 2default:default2
02default:default2
12default:default2]
GF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/fix2float_inputs.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
mult_parallel2default:default2
 2default:default2Z
DF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/mult_parallel.sv2default:default2
22default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter P bound to: 64 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
mult2default:default2
 2default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/mult/synth/mult.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult2default:default2
 2default:default2
02default:default2
12default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/mult/synth/mult.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
mult_parallel2default:default2
 2default:default2
02default:default2
12default:default2Z
DF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/mult_parallel.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
accu_parallel2default:default2
 2default:default2Z
DF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/accu_parallel.sv2default:default2
22default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter P bound to: 64 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
accu2default:default2
 2default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/accu/synth/accu.v2default:default2
532default:default8@Z8-6157h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
accu2default:default2
 2default:default2
02default:default2
12default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/accu/synth/accu.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
accu_parallel2default:default2
 2default:default2
02default:default2
12default:default2Z
DF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/accu_parallel.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
exp_inst2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/exp_inst.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
exp2default:default2
 2default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/exp/synth/exp.v2default:default2
532default:default8@Z8-6157h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
exp2default:default2
 2default:default2
02default:default2
12default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/exp/synth/exp.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
exp_inst2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/exp_inst.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
div_parallel2default:default2
 2default:default2Y
CF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/div_parallel.sv2default:default2
12default:default8@Z8-6157h px� 
V
%s
*synth2>
*	Parameter P bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
div2default:default2
 2default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/div/synth/div.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
div2default:default2
 2default:default2
02default:default2
12default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/div/synth/div.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
div_parallel2default:default2
 2default:default2
02default:default2
12default:default2Y
CF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/div_parallel.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
greater_inst2default:default2
 2default:default2X
BF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/greater_inst.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
greater2default:default2
 2default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/greater/synth/greater.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
greater2default:default2
 2default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.gen/sources_1/ip/greater/synth/greater.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
greater_inst2default:default2
 2default:default2
02default:default2
12default:default2X
BF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/greater_inst.v2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MLP2default:default2
 2default:default2
02default:default2
12default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
22default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default28
$xbip_pipe_v3_0_6_viv__parameterized32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default28
$xbip_pipe_v3_0_6_viv__parameterized32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default28
$xbip_pipe_v3_0_6_viv__parameterized32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default28
$xbip_pipe_v3_0_6_viv__parameterized32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default28
$xbip_pipe_v3_0_6_viv__parameterized32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized112default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized112default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized112default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2222default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2222default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2222default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2222default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2222default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
CARRYS_OUT[14]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
CARRYS_OUT[13]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
CARRYS_OUT[12]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
CARRYS_OUT[11]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
CARRYS_OUT[10]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[9]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[8]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[7]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[6]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[5]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[4]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[3]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[2]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[1]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default20
carry_chain__parameterized352default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[9]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[8]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[7]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[6]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[5]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[4]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[3]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[2]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[1]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default20
carry_chain__parameterized342default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized272default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized272default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized272default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized272default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized272default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default20
carry_chain__parameterized232default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default21
compare_eq_im__parameterized72default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized482default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized482default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized482default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized482default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized482default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default21
compare_ne_im__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized252default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized252default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized252default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized252default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized252default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[1]2default:default20
carry_chain__parameterized322default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default20
carry_chain__parameterized322default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default21
compare_eq_im__parameterized62default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2202default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized2202default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
m_axis_result_tuser[0]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2'
m_axis_result_tlast2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aclken2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2%
s_axis_a_tuser[0]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
s_axis_a_tlast2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2%
s_axis_b_tuser[0]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
s_axis_b_tlast2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
s_axis_c_tvalid2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[31]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[30]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[29]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[28]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[27]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[26]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[25]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[24]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[23]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[22]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[21]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[20]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[19]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[18]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[17]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[16]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[15]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[14]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[13]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[12]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[11]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2&
s_axis_c_tdata[10]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2%
s_axis_c_tdata[9]2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
zFinished RTL Elaboration : Time (s): cpu = 00:00:51 ; elapsed = 00:01:04 . Memory (MB): peak = 1940.715 ; gain = 1011.887
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:52 ; elapsed = 00:01:05 . Memory (MB): peak = 1940.715 ; gain = 1011.887
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:52 ; elapsed = 00:01:05 . Memory (MB): peak = 1940.715 ; gain = 1011.887
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:102default:default2
00:00:102default:default2
2900.9732default:default2
75.0702default:defaultZ17-268h px� 
j
-Analyzing %s Unisim elements for replacement
17*netlist2
1401162default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
52default:defaultZ29-28h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[9].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[8].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[7].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[6].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[63].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[62].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[61].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[60].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[5].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[59].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[58].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[57].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[56].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[55].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[54].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[53].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[52].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[51].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[50].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[4].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[49].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[48].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[47].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[46].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[45].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[44].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[43].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[42].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[41].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[40].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[3].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[39].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[38].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[37].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[36].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[35].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[34].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[33].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[32].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[31].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[30].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[2].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[29].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[28].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[27].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[26].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[25].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[24].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[23].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[22].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[21].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[20].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[1].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[19].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[18].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[17].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[16].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[15].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[14].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[13].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[12].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[11].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[10].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
�mult_parallel_inst/genblk1[0].mult_parallel/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2d
NF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2d
NF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.8092default:default2
3660.7192default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
r  A total of 41939 instances were transformed.
  FDE => FDRE: 27368 instances
  MULT_AND => LUT2: 14571 instances
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:052default:default2
00:00:052default:default2
3660.7192default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:02:52 ; elapsed = 00:02:55 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a200tfbg484-2
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:02:52 ; elapsed = 00:02:55 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:02:52 ; elapsed = 00:02:55 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:03:08 ; elapsed = 00:03:13 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2^
Jfix2float_input:/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2_
Kfix2float_input:/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2Z
Ffix2float_input:/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_INC_DELAY2default:default2*
delay__parameterized102default:default2_
Kfix2float_input:/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_INC_RND1_DELAY2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2B
.fix2float_input:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2F
2fix2float_input:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2B
.fix2float_input:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2@
,fix2float_input:/inst/i_synth/DELAY_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2B
.fix2float_input:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2A
-fix2float_input:/inst/i_synth/DELAY_UNDERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2B
.fix2float_input:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2F
2fix2float_input:/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2B
.fix2float_input:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2L
8fix2float_input:/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2a
Mmult:/inst/i_synth/MULT.OP/i_non_prim.R_AND_R/LOGIC.R_AND_R/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2b
Nmult:/inst/i_synth/MULT.OP/i_non_prim.R_AND_R/LOGIC.R_AND_R/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2]
Imult:/inst/i_synth/MULT.OP/i_non_prim.R_AND_R/LOGIC.R_AND_R/EXP_INC_DELAY2default:default2*
delay__parameterized102default:default2b
Nmult:/inst/i_synth/MULT.OP/i_non_prim.R_AND_R/LOGIC.R_AND_R/EXP_INC_RND1_DELAY2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2;
'mult:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2;
'mult:/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2;
'mult:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2A
-mult:/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2l
Xexp_inst/exp_inst/inst/i_synth/EXP_OP.i_sp_or_dp.OP/i_renorm_and_round/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2m
Yexp_inst/exp_inst/inst/i_synth/EXP_OP.i_sp_or_dp.OP/i_renorm_and_round/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2C
/exp_inst/exp_inst/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2G
3exp_inst/exp_inst/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2C
/exp_inst/exp_inst/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2G
3exp_inst/exp_inst/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2C
/exp_inst/exp_inst/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2M
9exp_inst/exp_inst/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2K
7div:/inst/i_synth/DIV_OP.SPD.OP/ROUND/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2L
8div:/inst/i_synth/DIV_OP.SPD.OP/ROUND/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2G
3div:/inst/i_synth/DIV_OP.SPD.OP/ROUND/EXP_INC_DELAY2default:default2*
delay__parameterized102default:default2L
8div:/inst/i_synth/DIV_OP.SPD.OP/ROUND/EXP_INC_RND1_DELAY2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2:
&div:/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:default2*
delay__parameterized102default:default2@
,div:/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2O
;greater_inst/greater_inst/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2I
5greater_inst/greater_inst/inst/i_synth/DELAY_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2O
;greater_inst/greater_inst/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2J
6greater_inst/greater_inst/inst/i_synth/DELAY_UNDERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2O
;greater_inst/greater_inst/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2O
;greater_inst/greater_inst/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2O
;greater_inst/greater_inst/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2U
Agreater_inst/greater_inst/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2>
*floating_point_v7_1_15_viv__parameterized12default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2>
*floating_point_v7_1_15_viv__parameterized12default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2>
*floating_point_v7_1_15_viv__parameterized12default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2>
*floating_point_v7_1_15_viv__parameterized12default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�EXP_OP.i_sp_or_dp.OP/i_shift_to_fixed/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2e
QEXP_OP.i_sp_or_dp.OP/i_renorm_and_round/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default2,
i_0/accu_in_reg[0][31]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6858h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:53 ; elapsed = 00:03:59 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:04:01 ; elapsed = 00:04:08 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:04:02 ; elapsed = 00:04:08 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:04:30 ; elapsed = 00:04:37 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:04:41 ; elapsed = 00:04:49 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:04:42 ; elapsed = 00:04:50 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[28]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][28]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[28]2default:default2
2nd2default:default2(
accu_in_reg[0][28]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[22]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][22]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[22]2default:default2
2nd2default:default2(
accu_in_reg[0][22]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[21]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][21]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[21]2default:default2
2nd2default:default2(
accu_in_reg[0][21]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[20]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][20]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[20]2default:default2
2nd2default:default2(
accu_in_reg[0][20]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[19]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][19]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[19]2default:default2
2nd2default:default2(
accu_in_reg[0][19]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[18]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][18]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[18]2default:default2
2nd2default:default2(
accu_in_reg[0][18]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[17]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][17]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[17]2default:default2
2nd2default:default2(
accu_in_reg[0][17]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[16]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][16]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[16]2default:default2
2nd2default:default2(
accu_in_reg[0][16]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[15]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][15]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[15]2default:default2
2nd2default:default2(
accu_in_reg[0][15]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[14]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][14]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[14]2default:default2
2nd2default:default2(
accu_in_reg[0][14]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[13]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][13]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[13]2default:default2
2nd2default:default2(
accu_in_reg[0][13]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[12]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][12]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[12]2default:default2
2nd2default:default2(
accu_in_reg[0][12]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[11]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][11]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[11]2default:default2
2nd2default:default2(
accu_in_reg[0][11]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[10]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][10]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[10]2default:default2
2nd2default:default2(
accu_in_reg[0][10]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[9]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][9]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[9]2default:default2
2nd2default:default2'
accu_in_reg[0][9]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[8]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][8]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[8]2default:default2
2nd2default:default2'
accu_in_reg[0][8]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[7]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][7]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[7]2default:default2
2nd2default:default2'
accu_in_reg[0][7]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[6]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][6]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[6]2default:default2
2nd2default:default2'
accu_in_reg[0][6]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[5]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][5]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[5]2default:default2
2nd2default:default2'
accu_in_reg[0][5]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[4]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][4]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[4]2default:default2
2nd2default:default2'
accu_in_reg[0][4]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[3]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][3]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[3]2default:default2
2nd2default:default2'
accu_in_reg[0][3]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[2]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][2]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[2]2default:default2
2nd2default:default2'
accu_in_reg[0][2]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[1]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][1]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[1]2default:default2
2nd2default:default2'
accu_in_reg[0][1]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[0]2default:default2
1st2default:default22
genblk2[0].accu_in_reg[0][0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
s_axis_a_tdata[0]2default:default2
2nd2default:default2'
accu_in_reg[0][0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[27]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][27]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[27]2default:default2
2nd2default:default2(
accu_in_reg[0][27]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[29]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][29]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[29]2default:default2
2nd2default:default2(
accu_in_reg[0][29]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[30]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][30]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[30]2default:default2
2nd2default:default2(
accu_in_reg[0][30]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[25]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][25]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[25]2default:default2
2nd2default:default2(
accu_in_reg[0][25]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[26]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][26]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[26]2default:default2
2nd2default:default2(
accu_in_reg[0][26]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[23]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][23]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[23]2default:default2
2nd2default:default2(
accu_in_reg[0][23]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[24]2default:default2
1st2default:default23
genblk2[0].accu_in_reg[0][24]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
1952default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2&
s_axis_a_tdata[24]2default:default2
2nd2default:default2(
accu_in_reg[0][24]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3302default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2#
s_axis_a_tvalid2default:default2
1st2default:default2/
genblk3[0].ai_flag_reg[0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
2102default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2#
s_axis_a_tvalid2default:default2
2nd2default:default2$
ai_flag_reg[0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3392default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2"
s_axis_a_tlast2default:default2
1st2default:default21
genblk4[0].last_flag_reg[0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
2252default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2"
s_axis_a_tlast2default:default2
2nd2default:default2&
last_flag_reg[0]/Q2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/MLP/MLP.sv2default:default2
3482default:default8@Z8-6859h px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|       33|Failed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:05:07 ; elapsed = 00:05:15 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:05:08 ; elapsed = 00:05:16 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:05:14 ; elapsed = 00:05:22 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:05:15 ; elapsed = 00:05:23 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |  1276|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |  1393|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     | 14256|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     | 26892|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     | 45213|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |  7046|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     | 24295|
2default:defaulth px� 
F
%s*synth2.
|9     |MULT_AND | 13857|
2default:defaulth px� 
F
%s*synth2.
|10    |MUXCY    | 55867|
2default:defaulth px� 
F
%s*synth2.
|11    |MUXF7    |   968|
2default:defaulth px� 
F
%s*synth2.
|12    |MUXF8    |   374|
2default:defaulth px� 
F
%s*synth2.
|13    |RAMB18E1 |    67|
2default:defaulth px� 
F
%s*synth2.
|14    |SRL16E   |  8975|
2default:defaulth px� 
F
%s*synth2.
|15    |SRLC32E  |   131|
2default:defaulth px� 
F
%s*synth2.
|16    |XORCY    | 40718|
2default:defaulth px� 
F
%s*synth2.
|17    |FDCE     |  8493|
2default:defaulth px� 
F
%s*synth2.
|18    |FDE      | 26854|
2default:defaulth px� 
F
%s*synth2.
|19    |FDPE     |     2|
2default:defaulth px� 
F
%s*synth2.
|20    |FDRE     | 93721|
2default:defaulth px� 
F
%s*synth2.
|21    |FDSE     |   266|
2default:defaulth px� 
F
%s*synth2.
|22    |IBUF     |  1083|
2default:defaulth px� 
F
%s*synth2.
|23    |OBUF     |     3|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:05:17 ; elapsed = 00:05:25 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 69 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:02:31 ; elapsed = 00:03:41 . Memory (MB): peak = 3666.523 ; gain = 1011.887
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:05:17 ; elapsed = 00:05:25 . Memory (MB): peak = 3666.523 ; gain = 2737.695
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:072default:default2
00:00:072default:default2
3666.5232default:default2
0.0002default:defaultZ17-268h px� 
j
-Analyzing %s Unisim elements for replacement
17*netlist2
1399812default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
42default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.3362default:default2
3666.5232default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 58516 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 17805 instances
  FDE => FDRE: 26854 instances
  MULT_AND => LUT2: 13857 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
c2cd09752default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
972default:default2
1722default:default2
692default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:07:262default:default2
00:07:342default:default2
3666.5232default:default2
3176.9452default:defaultZ17-268h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
GF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/MLP/MLP.runs/synth_1/MLP.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:01:082default:default2
00:00:532default:default2
3666.5232default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file MLP_utilization_synth.rpt -pb MLP_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jan  2 19:30:48 20252default:defaultZ17-206h px� 


End Record