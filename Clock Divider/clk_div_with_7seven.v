module clk_div_with_7seven(
	input clk, rst,
	input [3:0] entradas,
	output [6:0] salidas
);

wire clk_div_wire;
wire [3:0] salida_a_segmentos;

clk_divider DIV(
	.clk(clk),
	.rst(rst),
	.clk_div(clk_div_wire)
);

contador COUNTER(
	.clk(clk_div_wire),
	.c_max(entradas),
	.rst(rst),
	.counter_out(salida_a_segmentos)
);

seven7 DISPLAY(
	.bcd(salida_a_segmentos),
	.seg(salidas)
);


endmodule