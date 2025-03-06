transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mult_gen_0  -L xpm -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mult_gen_0 xil_defaultlib.glbl

do {mult_gen_0.udo}

run 1000ns

endsim

quit -force
