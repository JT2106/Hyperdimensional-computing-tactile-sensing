transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cordic_0  -L xpm -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_15 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L axi_utils_v2_0_6 -L cordic_v6_0_19 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cordic_0 xil_defaultlib.glbl

do {cordic_0.udo}

run 1000ns

endsim

quit -force
