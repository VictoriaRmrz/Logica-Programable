module wrapper(
	input [9:0] SW,
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output wire [6:0] HEX0,
	output wire [6:0] HEX1,
	output wire [9:0] LEDR
);

FSM_with_debouncer WRAPPER(
	.clk(MAX10_CLK1_50),
	.rst_a(KEY[0]),
	.enable_data(SW[9]),
	.entradas(SW[3:0]),
	.salidas_estado(HEX1), 
	.salidas_pass(HEX0),
	.pass_led(LEDR[0]),
	.debouncer_led(LEDR[9])
);


endmodule

