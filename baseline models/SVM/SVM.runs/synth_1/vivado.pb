
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
456.0082default:default2
161.5512default:defaultZ17-268h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top SVM -part xc7a200tfbg484-22default:defaultZ4-113h px� 
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
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
53082default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1338.555 ; gain = 409.766
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
SVM2default:default2
 2default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVM.sv2default:default2
22default:default8@Z8-6157h px� 
�
default block is never used226*oasys2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVM.sv2default:default2
5252default:default8@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2$
fix2float_inputs2default:default2
 2default:default2]
GF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/fix2float_inputs.sv2default:default2
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
kf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/fix2float_input/synth/fix2float_input.v2default:default2
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
kf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/fix2float_input/synth/fix2float_input.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
fix2float_inputs2default:default2
 2default:default2
02default:default2
12default:default2]
GF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/fix2float_inputs.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	SVs_ROM_12default:default2
 2default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_1.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
SVs_ROM12default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM1/synth/SVs_ROM1.vhd2default:default2
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
j
%s
*synth2R
>	Parameter C_INIT_FILE bound to: SVs_ROM1.mem - type: string 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_WRITE_DEPTH_A bound to: 244890 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_READ_DEPTH_A bound to: 244890 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 18 - type: integer 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_WRITE_DEPTH_B bound to: 244890 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_READ_DEPTH_B bound to: 244890 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 18 - type: integer 
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
e
%s
*synth2M
9	Parameter C_COUNT_36K_BRAM bound to: 60 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     2.353601 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM1/synth/SVs_ROM1.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SVs_ROM12default:default2
02default:default2
12default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM1/synth/SVs_ROM1.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SVs_ROM_12default:default2
 2default:default2
02default:default2
12default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_1.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	SVs_ROM_22default:default2
 2default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_2.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
SVs_ROM22default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM2/synth/SVs_ROM2.vhd2default:default2
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
j
%s
*synth2R
>	Parameter C_INIT_FILE bound to: SVs_ROM2.mem - type: string 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_WRITE_DEPTH_A bound to: 74115 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_READ_DEPTH_A bound to: 74115 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 17 - type: integer 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_WRITE_DEPTH_B bound to: 74115 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_READ_DEPTH_B bound to: 74115 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 17 - type: integer 
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
e
%s
*synth2M
9	Parameter C_COUNT_36K_BRAM bound to: 18 - type: string 
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
*synth2y
e	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     2.34782 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM2/synth/SVs_ROM2.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SVs_ROM22default:default2
02default:default2
12default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM2/synth/SVs_ROM2.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SVs_ROM_22default:default2
 2default:default2
02default:default2
12default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_2.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	SVs_ROM_32default:default2
 2default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_3.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
SVs_ROM32default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM3/synth/SVs_ROM3.vhd2default:default2
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
j
%s
*synth2R
>	Parameter C_INIT_FILE bound to: SVs_ROM3.mem - type: string 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_WRITE_DEPTH_A bound to: 701325 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_READ_DEPTH_A bound to: 701325 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 20 - type: integer 
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
d
%s
*synth2L
8	Parameter C_WRITE_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_WIDTH_B bound to: 9 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_WRITE_DEPTH_B bound to: 701325 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_READ_DEPTH_B bound to: 701325 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 20 - type: integer 
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
f
%s
*synth2N
:	Parameter C_COUNT_36K_BRAM bound to: 171 - type: string 
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
f	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     2.352161 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM3/synth/SVs_ROM3.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SVs_ROM32default:default2
02default:default2
12default:default2u
_f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/SVs_ROM3/synth/SVs_ROM3.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SVs_ROM_32default:default2
 2default:default2
02default:default2
12default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVs_ROM_3.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
fix2float_parameters2default:default2
 2default:default2`
JF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/fix2float_parameters.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2'
fix2float_parameter2default:default2
 2default:default2�
sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/fix2float_parameter/synth/fix2float_parameter.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
fix2float_parameter2default:default2
 2default:default2
02default:default2
12default:default2�
sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/fix2float_parameter/synth/fix2float_parameter.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
fix2float_parameters2default:default2
 2default:default2
02default:default2
12default:default2`
JF:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/fix2float_parameters.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
sub_inst2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/sub_inst.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
sub2default:default2
 2default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/sub/synth/sub.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sub2default:default2
 2default:default2
02default:default2
12default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/sub/synth/sub.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sub_inst2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/sub_inst.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	mult_inst2default:default2
 2default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/mult_inst.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
mult2default:default2
 2default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/mult/synth/mult.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult2default:default2
 2default:default2
02default:default2
12default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/mult/synth/mult.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	mult_inst2default:default2
 2default:default2
02default:default2
12default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/mult_inst.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	accu_inst2default:default2
 2default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/accu_inst.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
accu2default:default2
 2default:default2k
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/synth/accu.v2default:default2
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
Uf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/synth/accu.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	accu_inst2default:default2
 2default:default2
02default:default2
12default:default2U
?F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/accu_inst.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
div_inst2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/div_inst.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
div2default:default2
 2default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/div/synth/div.v2default:default2
532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
div2default:default2
 2default:default2
02default:default2
12default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/div/synth/div.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
div_inst2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/div_inst.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
exp_inst2default:default2
 2default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/exp_inst.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
exp2default:default2
 2default:default2i
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/exp/synth/exp.v2default:default2
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
Sf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/exp/synth/exp.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
exp_inst2default:default2
 2default:default2
02default:default2
12default:default2T
>F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/exp_inst.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
a_ROM_12default:default2
 2default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_1.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
a_ROM12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM1/synth/a_ROM1.vhd2default:default2
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
<	Parameter C_INIT_FILE bound to: a_ROM1.mem - type: string 
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
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_A bound to: 1814 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_A bound to: 1814 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 11 - type: integer 
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
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 1814 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_B bound to: 1814 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 11 - type: integer 
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
8	Parameter C_COUNT_36K_BRAM bound to: 2 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2x
d	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     4.8711 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM1/synth/a_ROM1.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
a_ROM12default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM1/synth/a_ROM1.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
a_ROM_12default:default2
 2default:default2
02default:default2
12default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_1.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
a_ROM_22default:default2
 2default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_2.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
a_ROM22default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM2/synth/a_ROM2.vhd2default:default2
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
<	Parameter C_INIT_FILE bound to: a_ROM2.mem - type: string 
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
:	Parameter C_WRITE_DEPTH_A bound to: 549 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_DEPTH_A bound to: 549 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 10 - type: integer 
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
:	Parameter C_WRITE_DEPTH_B bound to: 549 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_DEPTH_B bound to: 549 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 10 - type: integer 
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
8	Parameter C_COUNT_36K_BRAM bound to: 1 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     2.622 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM2/synth/a_ROM2.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
a_ROM22default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM2/synth/a_ROM2.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
a_ROM_22default:default2
 2default:default2
02default:default2
12default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_2.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
a_ROM_32default:default2
 2default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_3.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
a_ROM32default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM3/synth/a_ROM3.vhd2default:default2
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
<	Parameter C_INIT_FILE bound to: a_ROM3.mem - type: string 
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
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_A bound to: 5195 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_A bound to: 5195 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 13 - type: integer 
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
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 5195 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_B bound to: 5195 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 13 - type: integer 
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
8	Parameter C_COUNT_36K_BRAM bound to: 4 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 3 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     7.919827 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM3/synth/a_ROM3.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
a_ROM32default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/a_ROM3/synth/a_ROM3.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
a_ROM_32default:default2
 2default:default2
02default:default2
12default:default2S
=F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/a_ROM_3.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
b_ROM2default:default2
 2default:default2Q
;F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/b_ROM.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
b_ROM02default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/synth/b_ROM0.vhd2default:default2
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
<	Parameter C_INIT_FILE bound to: b_ROM0.mem - type: string 
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
d
%s
*synth2L
8	Parameter C_WRITE_DEPTH_A bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_DEPTH_A bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRA_WIDTH bound to: 2 - type: integer 
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
d
%s
*synth2L
8	Parameter C_WRITE_DEPTH_B bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_READ_DEPTH_B bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDRB_WIDTH bound to: 2 - type: integer 
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
mf:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/synth/b_ROM0.vhd2default:default2
2302default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
b_ROM02default:default2
02default:default2
12default:default2q
[f:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/b_ROM0/synth/b_ROM0.vhd2default:default2
672default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
b_ROM2default:default2
 2default:default2
02default:default2
12default:default2Q
;F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/b_ROM.v2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SVM2default:default2
 2default:default2
02default:default2
12default:default2P
:F:/01_SYSU/HDC_Tactile/tactile/code/Verilog_ML1/SVM/SVM.sv2default:default2
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized412default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1862default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1862default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1862default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1842default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1842default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1842default:defaultZ8-7129h px� 
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized292default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized292default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized292default:defaultZ8-7129h px� 
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
&xbip_pipe_v3_0_6_viv__parameterized1822default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1822default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1822default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1802default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1802default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1802default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1782default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1782default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1782default:defaultZ8-7129h px� 
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
carry_chain__parameterized322default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default21
compare_eq_im__parameterized42default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default28
$xbip_pipe_v3_0_6_viv__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default28
$xbip_pipe_v3_0_6_viv__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default28
$xbip_pipe_v3_0_6_viv__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default28
$xbip_pipe_v3_0_6_viv__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default28
$xbip_pipe_v3_0_6_viv__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized982default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized982default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized982default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized962default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized962default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized962default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized962default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized962default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1762default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1762default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1762default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1742default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1742default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1742default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1722default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1722default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1722default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1042default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1042default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1042default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized172default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized172default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized172default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized192default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized192default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized192default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1702default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1702default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1702default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default29
%xbip_pipe_v3_0_6_viv__parameterized882default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default29
%xbip_pipe_v3_0_6_viv__parameterized882default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default29
%xbip_pipe_v3_0_6_viv__parameterized882default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default29
%xbip_pipe_v3_0_6_viv__parameterized882default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default29
%xbip_pipe_v3_0_6_viv__parameterized882default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1682default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1682default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1682default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[2]2default:default20
carry_chain__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[1]2default:default20
carry_chain__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[0]2default:default20
carry_chain__parameterized312default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default28
$xbip_pipe_v3_0_6_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default28
$xbip_pipe_v3_0_6_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default28
$xbip_pipe_v3_0_6_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default28
$xbip_pipe_v3_0_6_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default28
$xbip_pipe_v3_0_6_viv__parameterized92default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1642default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1642default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1642default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1622default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CE2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1622default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SCLR2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1622default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSET2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1622default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SINIT2default:default2:
&xbip_pipe_v3_0_6_viv__parameterized1622default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
CARRYS_OUT[3]2default:default20
carry_chain__parameterized292default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
zFinished RTL Elaboration : Time (s): cpu = 00:01:43 ; elapsed = 00:02:00 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:44 ; elapsed = 00:02:01 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:01:44 ; elapsed = 00:02:01 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
00:00:032default:default2
00:00:032default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
i
-Analyzing %s Unisim elements for replacement
17*netlist2
297282default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
osquare_3/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
osquare_2/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
osquare_1/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
omult_a_3/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
omult_a_2/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
�
!Found multi-term driver net: %s.
512*netlist2�
omult_a_1/mult_inst1/inst/i_synth/MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/<const0>2default:defaultZ29-1115h px� 
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
NF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2d
NF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2382default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
o  A total of 4911 instances were transformed.
  FDE => FDRE: 3048 instances
  MULT_AND => LUT2: 1863 instances
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:022default:default2
00:00:022default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:02:28 ; elapsed = 00:02:44 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:02:28 ; elapsed = 00:02:44 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:02:29 ; elapsed = 00:02:45 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:02:43 ; elapsed = 00:03:00 . Memory (MB): peak = 2705.992 ; gain = 1777.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2`
Lfloating_point_v7_1_15:/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2a
Mfloating_point_v7_1_15:/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2\
Hfloating_point_v7_1_15:/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_INC_DELAY2default:default2*
delay__parameterized102default:default2a
Mfloating_point_v7_1_15:/i_synth/FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_INC_RND1_DELAY2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2D
0floating_point_v7_1_15:/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2H
4floating_point_v7_1_15:/i_synth/DELAY_DIVIDE_BY_ZERO2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2D
0floating_point_v7_1_15:/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2B
.floating_point_v7_1_15:/i_synth/DELAY_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2D
0floating_point_v7_1_15:/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2C
/floating_point_v7_1_15:/i_synth/DELAY_UNDERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2D
0floating_point_v7_1_15:/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2H
4floating_point_v7_1_15:/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2D
0floating_point_v7_1_15:/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2N
:floating_point_v7_1_15:/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2b
Nsub:/inst/i_synth/ADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/NORM/ROUND/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2c
Osub:/inst/i_synth/ADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/NORM/ROUND/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2:
&sub:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2:
&sub:/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2:
&sub:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:default2*
delay__parameterized102default:default2@
,sub:/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
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
$decloning instance '%s' (%s) to '%s'223*oasys2_
Kexp:/inst/i_synth/EXP_OP.i_sp_or_dp.OP/i_renorm_and_round/EXTRA_LSB_BIT_DEL2default:default2*
delay__parameterized102default:default2`
Lexp:/inst/i_synth/EXP_OP.i_sp_or_dp.OP/i_renorm_and_round/EXTRA_LSB_RND1_DEL2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys26
"exp:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2:
&exp:/inst/i_synth/DELAY_DIVIDE_BY_ZERO2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys26
"exp:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2:
&exp:/inst/i_synth/DELAY_ACCUM_OVERFLOW2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys26
"exp:/inst/i_synth/DELAY_INVALID_OP2default:default2*
delay__parameterized102default:default2@
,exp:/inst/i_synth/DELAY_ACCUM_INPUT_OVERFLOW2default:defaultZ8-223h px� 
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
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�EXP_OP.i_sp_or_dp.OP/i_shift_to_fixed/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2e
QEXP_OP.i_sp_or_dp.OP/i_renorm_and_round/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
nEXP_OP.i_sp_or_dp.OP/i_special_detect/range_overflow_detect/C_CHAIN/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized9__32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
oEXP_OP.i_sp_or_dp.OP/i_special_detect/range_underflow_detect/C_CHAIN/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized9__32default:defaultZ8-3332h px�
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys26
"FIX_TO_FLT_OP.SPD.OP/LZE/enc_chunk2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55442default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55442default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[6].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[0].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[2].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[2].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[5].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[5].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[1].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[1].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[7].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[7].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[7].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[7].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[7].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[7].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[7].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[7].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[7].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[7].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[4].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[4].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[6].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[6].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
�genblk1[0].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]2default:default2
FD2default:default2�
�genblk1[0].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[3].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[6].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[8].genblk1[0].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[2].genblk1[5].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[2].genblk1[4].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[2].genblk1[3].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[2].genblk1[2].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]2default:default2
FD2default:default2�
{genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2�
{genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]2default:default2
FD2default:default2�
{genblk1[2].genblk1[1].fix2float_inputs/inst/i_synth/FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[3].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[6].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[8].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[2].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[5].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[2].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[1].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[5].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[0].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[7].genblk1[1].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[3].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2�
�\genblk1[4].genblk1[4].fix2float_inputs /inst/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 2default:defaultZ8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55442default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
12default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3732default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2m
YADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2n
ZADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/DEC_STATE_PRE_OP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
122default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
12default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3732default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2m
YADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2n
ZADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/DEC_STATE_PRE_OP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
122default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__72default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__62default:defaultZ8-3332h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2�
sADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg2default:default2
162default:default2
12default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3862default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2w
cADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2]2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3732default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2m
YADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
92default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2n
ZADDSUB_OP.ADDSUB/LOGIC_SPEED.OP/EXP/DEC_STATE_PRE_OP_DELAY/i_pipe/opt_has_pipe.first_q_reg2default:default2
122default:default2
82default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__82default:defaultZ8-3332h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2I
5MUX_LOOP[3].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg2default:default2
652default:default2
242default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2G
3i_result_mag_recomb/i_pipe/opt_has_pipe.first_q_reg2default:default2
252default:default2
232default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2Y
Eg_accum_split[2].g_fabric_split.i_reg/i_pipe/opt_has_pipe.first_q_reg2default:default2
192default:default2
182default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2R
>g_accum_split[2].i_cntrl_delay/i_pipe/opt_has_pipe.first_q_reg2default:default2
42default:default2
32default:default2|
ff:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.gen/sources_1/ip/accu/hdl/xbip_pipe_v3_0_vh_rfs.vhd2default:default2
3682default:default8@Z8-3936h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2>
*floating_point_v7_1_15_viv__parameterized32default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2B
.floating_point_v7_1_15_viv__parameterized3__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2B
.floating_point_v7_1_15_viv__parameterized3__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2B
.floating_point_v7_1_15_viv__parameterized3__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2B
.floating_point_v7_1_15_viv__parameterized3__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[24].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
kMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/ppg[8].nt.ppi/f/YES_REG.l[25].reg.s.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�MULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[5].d.sl.sw/needDelay.lastDelay.deli/f/YES_REG.l[24].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
zMULT.OP/i_non_prim.MULT/QQ_VARIANT.MULT/MANT_MULT/logic_multiplier.m1/l[11].tree.assf.ai/be.ad/f/YES_REG.l[26].reg.n.eOn.f2default:default2A
-floating_point_v7_1_15_viv__parameterized3__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2>
*floating_point_v7_1_15_viv__parameterized52default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2B
.floating_point_v7_1_15_viv__parameterized5__102default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xACCUM_OP.OP/i_flt_to_fix/COND_DET/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[0].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
|ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ACCUM_OP.OP/g_accum_split[1].g_lsb_and_msb_bit_detection.i_msb_detect_neg/i_all_zeros/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
pACCUM_OP.OP/i_lsb_detect_final/g_encode_in_out_lsb_det.i_all_zero_out/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD2default:default2A
-floating_point_v7_1_15_viv__parameterized5__92default:defaultZ8-3332h px�
|
%s
*synth2d
PDSP Report: Generating DSP addrSVs_23, operation Mode is: (D+(A:0x1))*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_23 is absorbed into DSP addrSVs_23.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_24 is absorbed into DSP addrSVs_23.
2default:defaulth p
x
� 
�
%s
*synth2r
^DSP Report: Generating DSP addrSVs_20, operation Mode is: (0 or C)+(A*(B:0x87) or 0)+CarryIn.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_20 is absorbed into DSP addrSVs_20.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_21 is absorbed into DSP addrSVs_20.
2default:defaulth p
x
� 
r
%s
*synth2Z
FDSP Report: Generating DSP addrSVs_21, operation Mode is: A*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_21 is absorbed into DSP addrSVs_21.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP addrSVs_33, operation Mode is: (D+(A:0x1))*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_33 is absorbed into DSP addrSVs_33.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_34 is absorbed into DSP addrSVs_33.
2default:defaulth p
x
� 
�
%s
*synth2r
^DSP Report: Generating DSP addrSVs_30, operation Mode is: (0 or C)+(A*(B:0x87) or 0)+CarryIn.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_30 is absorbed into DSP addrSVs_30.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_31 is absorbed into DSP addrSVs_30.
2default:defaulth p
x
� 
r
%s
*synth2Z
FDSP Report: Generating DSP addrSVs_31, operation Mode is: A*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_31 is absorbed into DSP addrSVs_31.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP addrSVs_13, operation Mode is: (D+(A:0x1))*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_13 is absorbed into DSP addrSVs_13.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_14 is absorbed into DSP addrSVs_13.
2default:defaulth p
x
� 
�
%s
*synth2r
^DSP Report: Generating DSP addrSVs_10, operation Mode is: (0 or C)+(A*(B:0x87) or 0)+CarryIn.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_10 is absorbed into DSP addrSVs_10.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_11 is absorbed into DSP addrSVs_10.
2default:defaulth p
x
� 
r
%s
*synth2Z
FDSP Report: Generating DSP addrSVs_11, operation Mode is: A*(B:0x87).
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator addrSVs_11 is absorbed into DSP addrSVs_11.
2default:defaulth p
x
� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:07 ; elapsed = 00:03:24 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:18 ; elapsed = 00:03:35 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
~Finished Timing Optimization : Time (s): cpu = 00:03:19 ; elapsed = 00:03:36 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
}Finished Technology Mapping : Time (s): cpu = 00:03:27 ; elapsed = 00:03:48 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
wFinished IO Insertion : Time (s): cpu = 00:03:37 ; elapsed = 00:03:58 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:38 ; elapsed = 00:03:58 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:42 ; elapsed = 00:04:03 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:43 ; elapsed = 00:04:03 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:44 ; elapsed = 00:04:05 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:45 ; elapsed = 00:04:05 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | D+A*B       | 1      | 8      | -      | 10     | 19     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | Dynamic     | -      | -      | -      | -      | 17     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | A*B         | 10     | 8      | -      | -      | 18     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | D+A*B       | 1      | 8      | -      | 13     | 22     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | Dynamic     | -      | -      | -      | -      | 20     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | A*B         | 13     | 8      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | D+A*B       | 1      | 8      | -      | 11     | 20     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | Dynamic     | -      | -      | -      | -      | 18     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|SVM         | A*B         | 11     | 8      | -      | -      | 19     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
|2     |CARRY4   |   340|
2default:defaulth px� 
F
%s*synth2.
|3     |DSP48E1  |     9|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT1     |   564|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT2     |  4441|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT3     |  4047|
2default:defaulth px� 
F
%s*synth2.
|9     |LUT4     |  7600|
2default:defaulth px� 
F
%s*synth2.
|10    |LUT5     |  1356|
2default:defaulth px� 
F
%s*synth2.
|11    |LUT6     |  7097|
2default:defaulth px� 
F
%s*synth2.
|12    |MULT_AND |  1767|
2default:defaulth px� 
F
%s*synth2.
|13    |MUXCY    | 13153|
2default:defaulth px� 
F
%s*synth2.
|14    |MUXF7    |  1351|
2default:defaulth px� 
F
%s*synth2.
|15    |MUXF8    |   356|
2default:defaulth px� 
F
%s*synth2.
|16    |RAMB18E1 |     6|
2default:defaulth px� 
F
%s*synth2.
|19    |RAMB36E1 |   256|
2default:defaulth px� 
F
%s*synth2.
|22    |SRL16E   |  1362|
2default:defaulth px� 
F
%s*synth2.
|23    |SRLC32E  |    71|
2default:defaulth px� 
F
%s*synth2.
|24    |XORCY    | 11031|
2default:defaulth px� 
F
%s*synth2.
|25    |FDCE     |   458|
2default:defaulth px� 
F
%s*synth2.
|26    |FDE      |  2992|
2default:defaulth px� 
F
%s*synth2.
|27    |FDRE     | 28973|
2default:defaulth px� 
F
%s*synth2.
|28    |FDSE     |    41|
2default:defaulth px� 
F
%s*synth2.
|29    |IBUF     |  1083|
2default:defaulth px� 
F
%s*synth2.
|30    |OBUF     |     3|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:45 ; elapsed = 00:04:06 . Memory (MB): peak = 2705.992 ; gain = 1777.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 400 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:01:23 ; elapsed = 00:03:32 . Memory (MB): peak = 2705.992 ; gain = 1777.203
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:03:45 ; elapsed = 00:04:08 . Memory (MB): peak = 2705.992 ; gain = 1777.203
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
00:00:022default:default2
00:00:022default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
i
-Analyzing %s Unisim elements for replacement
17*netlist2
312612default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
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
00:00:002default:default2 
00:00:00.0872default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 8860 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 4101 instances
  FDE => FDRE: 2992 instances
  MULT_AND => LUT2: 1767 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
ed4bcec62default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5382default:default2
1132default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:04:212default:default2
00:04:452default:default2
2705.9922default:default2
2216.7272default:defaultZ17-268h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
GF:/01_SYSU/HDC_Tactile/tactile/code/Artix7/SVM/SVM.runs/synth_1/SVM.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:242default:default2
00:00:202default:default2
2705.9922default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file SVM_utilization_synth.rpt -pb SVM_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jan  9 14:51:49 20252default:defaultZ17-206h px� 


End Record