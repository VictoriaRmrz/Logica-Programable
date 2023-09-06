module FSM_with_debouncer #(parameter Bits = 4)(
	input clk, rst_a, enable_data,
	input [Bits - 1 : 0] entradas,
	output [6:0] salidas_estado, salidas_pass,
	output pass_led, debouncer_led
);

wire p_b_debouncer_wire;
wire [2:0] estado_led;

debouncer DEB(
	.clk(clk),
	.rst_a(rst_a),
	.p_b(enable_data),
	.p_b_debouncer(p_b_debouncer_wire)
);

FSM_PW MAQUINA_ESTADOS(
	.clk(clk),
	.rst_a(rst_a),
	.enable_data(p_b_debouncer_wire),
	.entrada_pw(entradas),
	.pass(pass_led),
	.estado_led(estado_led),
	.estado_debouncer(debouncer_led)
);

seven7 DISPLAY_ESTADOS(
	.bcd(estado_led),
	.seg(salidas_estado)
);

seven7 DISPLAY_PASSWORD(
	.bcd(entradas),
	.seg(salidas_pass)
);

endmodule