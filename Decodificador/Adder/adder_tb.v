
module adder_tb();
	
reg input_a;
reg input_b;
wire output_s0;
wire output_s1;



adder DUT(

.a(input_a),
.b(input_b),
.s0(output_s0),
.s1(output_s1)
);

initial
begin
	input_a = 0;
	input_b = 0;
	#100
	input_a = 0;
	input_b = 1;
	#100
	input_a = 1;
	input_b = 0;
	#100
	input_a = 1;
	input_b = 1;
	#100
	$stop;
end

endmodule
