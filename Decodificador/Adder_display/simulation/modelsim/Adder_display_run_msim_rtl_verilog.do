transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Decodificador/Display {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Decodificador/Display/dec_display.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Decodificador/Adder {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Decodificador/Adder/adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Decodificador/Adder_display {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Decodificador/Adder_display/adder_display.v}

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Decodificador/Adder_display/output_files {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Decodificador/Adder_display/output_files/adder_display_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  adder_display_tb

add wave *
view structure
view signals
run -all
