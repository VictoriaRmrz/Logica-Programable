module FSM_PW_tb #(parameter Bits = 4)();

	reg 						clk;
	reg						rst_a;
	reg						enable_data;
	reg [Bits - 1 : 0] 	entrada_pw;
	
	wire						pass;

FSM_PW DUT(
.clk(clk),
.rst_a(rst_a),
.enable_data(enable_data),
.entrada_pw(entrada_pw),
.pass(pass)
);


always begin
	forever #10 clk = ~clk;
end


initial
begin
	enable_data = 0;
	clk = 0;
	rst_a = 1;
	#5 rst_a = 0;
	#10 rst_a = 1;
	
	//
	entrada_pw = 6;
	enable_data = 1;
	#100
	enable_data = 0;
	#60
	entrada_pw = 9;
	enable_data = 1;
	#100
	enable_data = 0;
	#60
	entrada_pw = 8;
	enable_data = 1;
	#100
	enable_data = 0;
	#60
	entrada_pw = 7;
	enable_data = 1;
	#100
	enable_data = 0;
	#100
	enable_data = 1;
	#100
	$stop;
end


endmodule 