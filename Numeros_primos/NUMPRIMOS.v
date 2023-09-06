module NUMPRIMOS(
	input [3:0] inputs,
	output reg salida
	
);

always @(*)
begin

	case (inputs)
		1:
		salida = 1;
		2:
		salida = 1;
		3:
		salida = 1;
		5:
		salida = 1;
		7:
		salida = 1;
		11:
		salida = 1;
		13:
		salida = 1;
		15:
		salida = 1;
		
		default
		salida = 0;

	endcase

end
endmodule