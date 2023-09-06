module ContadorWithDebouncer(
	input clk, rst_a, p_b,
	input [3:0] entradas,
	output [6:0] salidas
);

wire p_b_debouncer_wire;
wire [3:0] salida_a_segmentos;

debouncer DEB(
	.clk(clk),
	.rst_a(rst_a),
	.p_b(p_b),
	.p_b_debouncer(p_b_debouncer_wire)
);

contador COUNTER(
	.clk(p_b_debouncer_wire),
	.c_max(entradas),
	.rst(rst_a),
	.counter_out(salida_a_segmentos)
);

seven7 DISPLAY(
	.bcd(salida_a_segmentos),
	.seg(salidas)
);


endmodule