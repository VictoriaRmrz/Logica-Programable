
module dec_display_tb();
	
reg input_s0, input_s1;
wire output_a;
wire output_b;
wire output_c;
wire output_d;
wire output_e;
wire output_f;
wire output_g;


dec_display DUT(

.s0(input_s0),
.s1(input_s1),
.a(output_a),
.b(output_b),
.c(output_c),
.d(output_d),
.e(output_e),
.f(output_f),
.g(output_g)
);



initial
begin
	input_s0 = 0;
	input_s1 = 0;
	#100
	input_s0 = 1;
	input_s1 = 0;
	#100
	input_s0 = 0;
	input_s1 = 1;
	#100
	$stop;
end

endmodule