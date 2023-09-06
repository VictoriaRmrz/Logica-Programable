module ContadorWithDebouncer_wrapper(
	input [9:0] SW,
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output wire [6:0] HEX0
);

ContadorWithDebouncer WRAPPER(
	.p_b(SW[4]),
	.clk(MAX10_CLK1_50),
	.rst_a(KEY[0]),
	.entradas(SW[3:0]),
	.salidas(HEX0)
);


endmodule