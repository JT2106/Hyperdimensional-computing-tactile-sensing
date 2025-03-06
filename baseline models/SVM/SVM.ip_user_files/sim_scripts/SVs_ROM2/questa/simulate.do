onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib SVs_ROM2_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {SVs_ROM2.udo}

run 1000ns

quit -force
