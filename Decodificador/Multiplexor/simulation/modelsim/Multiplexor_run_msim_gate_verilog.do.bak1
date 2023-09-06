transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Multiplexor.vo}

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Decodificador/Multiplexor {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Decodificador/Multiplexor/mux_tb.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  mux_tb

add wave *
view structure
view signals
run -all
