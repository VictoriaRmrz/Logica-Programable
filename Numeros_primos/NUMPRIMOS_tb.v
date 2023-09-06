/*
Cama de pruebas, numeros primos
*/


module NUMPRIMOS_tb();
	
reg [3:0] input_gate_reg;
wire output_gate_wire;

NUMPRIMOS DUT(

.inputs(input_gate_reg),
.salida(output_gate_wire)
);

initial
begin
	input_gate_reg = 0;
	#100
	input_gate_reg = 1;
	#100
	input_gate_reg = 2;
	#100
	input_gate_reg = 3;
	#100
	input_gate_reg = 4;
	#100
	input_gate_reg = 5;
	#100
	input_gate_reg = 6;
	#100
	input_gate_reg = 7;
	#100
	input_gate_reg = 8;
	#100
	input_gate_reg = 9;
	#100
	input_gate_reg = 10;
	#100
	input_gate_reg = 11;
	#100
	input_gate_reg = 12;
	#100
	input_gate_reg = 13;
	#100
	input_gate_reg = 14;
	#100
	input_gate_reg = 15;
	#100
	$stop;
end

endmodule