/*
Cama de pruebas, compuertas combinacionales
*/


module GATES_tb();
/*
reg in_1;
reg in_2;

wire out_AND;
wire out_OR;
wire out_XOR;
wire out_NOT;
wire out_NAND;
wire out_NOR;
wire out_XNOR;
wire out_YES;

GATES DUT(
//Entradas 
.input_gate [0](in_1),
.input_gate [1](in_2),

//Salidas
.output_gate [0](out_AND),
.output_gate [1](out_OR),
.output_gate [2](out_XOR),
.output_gate [3](out_NOT),
.output_gate [4](out_NAND),
.output_gate [5](out_NOR),
.output_gate [6](out_XNOR),
.output_gate [7](out_YES),

);

initial
begin
	in_1 1'b0;
	in_2 1'b0;
	#100
	in_1 = 1'b1;
	#100 
	in_2 = 1'b1;
	#100
	in_1 = 1'b0;
	#100
	$stop
end

endmodule
*/

	
reg [1:0] input_gate_reg;
wire [7:0] output_gate_wire;


GATES DUT(

.input_gate(input_gate_reg),
.output_gate(output_gate_wire)
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
	$stop;
end

endmodule
