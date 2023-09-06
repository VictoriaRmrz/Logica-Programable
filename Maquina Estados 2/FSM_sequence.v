module FSM_sequence(
	input 	clk, 
				rst,
	output [3:0] LEDR
);

wire clk_divider_wire; 

clk_divider CLOCK_DIVIDER(
	.clk(clk),
	.rst(rst),
	.clk_div(clk_divider_wire)
);

parameter	   state0 = 4'b 1111,
					state1 = 4'b 1010,
					state2 = 4'b 0101,
					state3 = 4'b 0000,
					state4 = 4'b 1110,
					state5 = 4'b 0111;


reg [3:0] current, next;	// del mismo tamaño que la salida

//ALWAYS PARA ASIGNACION DEL SIG. ESTADO
always @(posedge clk_divider_wire or negedge rst)
begin
	if (!rst)	
		current <= state0;
	else
		current <= next;
end

//ALWAYS PARA EL CAMBIO
always @(current)
begin
	case(current)
		state0:
			next <= state1;
		state1: 
			next <= state2;
		state2:
			next <= state3;
		state3:
			next <= state4;
		state4:
			next <= state5;
		state5:
			next <= state0;
		default
			next <= state0;
	endcase
end

assign LEDR = next;

endmodule