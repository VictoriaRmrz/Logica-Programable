module adder(a, b, s0, s1);
	input a, b;
	output s0, s1;
	assign s0 = a^b; //XOR
	assign s1 = a&b; //AND
endmodule