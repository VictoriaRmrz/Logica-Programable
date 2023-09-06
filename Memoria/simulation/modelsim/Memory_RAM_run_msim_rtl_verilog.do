transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/victo/OneDrive/Escritorio/Escuela\ Victoria/Universidad/Logica\ Programable/Memoria {C:/Users/victo/OneDrive/Escritorio/Escuela Victoria/Universidad/Logica Programable/Memoria/memory_RAM.v}

