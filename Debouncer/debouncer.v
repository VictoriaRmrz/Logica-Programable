module debouncer #(parameter C_MAX = 500000)(
	input p_b, clk, rst_a,
	output p_b_debouncer
);

wire flag_check_wire;
counterDebouncer CONTEO_DEBOUNCER(
	.clk(clk),
	.rst_a(rst_a),
	.flag_check(flag_check_wire)
);

ff_d REGISTRO_GUARDAR(

	.clk(flag_check_wire),
	.rst_a(rst_a),
	.d_in(p_b),
	.q_out(p_b_debouncer)

);


endmodule