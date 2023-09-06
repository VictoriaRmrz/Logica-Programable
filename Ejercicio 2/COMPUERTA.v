module COMPUERTA(
	input input_a, input_b,
	output reg [7:0] output_gate
);

always @(*)
begin
	output_gate [0] = input_a & input_b; //AND
	output_gate [1] = input_a | input_b; //OR
	output_gate [2] = input_a ^ input_b; //XOR
	output_gate [3] = ~input_a; //NOT
	output_gate [4] = ~(input_a & input_b); //NAND
	output_gate [5] = ~(input_a | input_b); //XNOR
	output_gate [6] = ~(input_a ^ input_b);
	output_gate [7] = input_a; //YES
	
end

endmodule