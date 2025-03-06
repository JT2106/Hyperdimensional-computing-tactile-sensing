onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fix2float_input_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fix2float_input.udo}

run 1000ns

quit -force
