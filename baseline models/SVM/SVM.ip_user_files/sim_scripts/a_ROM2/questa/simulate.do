onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib a_ROM2_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {a_ROM2.udo}

run 1000ns

quit -force
