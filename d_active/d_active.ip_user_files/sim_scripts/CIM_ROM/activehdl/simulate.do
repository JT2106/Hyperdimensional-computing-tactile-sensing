transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+CIM_ROM  -L xpm -L blk_mem_gen_v8_4_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CIM_ROM xil_defaultlib.glbl

do {CIM_ROM.udo}

run 1000ns

endsim

quit -force
