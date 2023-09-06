transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/7\ segmentos {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/7 segmentos/seven7.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Contador\ con\ clk {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Contador con clk/contador.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Clock\ Divider {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Clock Divider/clk_divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Clock\ Divider {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Clock Divider/clk_div_with_7seven.v}
vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Clock\ Divider {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Clock Divider/wrapper.v}

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Clock\ Divider {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Clock Divider/clk_divider_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  clk_divider_tb

add wave *
view structure
view signals
run -all
