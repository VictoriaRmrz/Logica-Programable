module counter_9999(
	input clk,
			switch_up,
			switch_clear,
			rst_a,
	output [7:0] seg,
	output [3:0] digit
);

wire s_up, s_clear;
reg [3:0] units, tens, hund, thous;

always @(posedge clk)
begin

	if(s_up)
	begin
		units <= units + 1;
		
		if(units == 9)
		begin
			units <= 0;
			tens <= tens + 1;
		end
		
		if(tens == 9)
		begin
			tens <= 0;
			hund <= hund + 1;
		end
		
		if(hund == 9)
		begin
			hund <= 0;
			thous <= thous + 1;
		end
	end
	
	if(s_clear)
	begin
		units <= 0;
		tens <= 0;
		hund <= 0;
		thous <= 0;
	end
end

disp_7seg DISPLAY(

	.clk(clk),
	.units(units),
	.tens(tens),
	.hund(hund),
	.thous(thous),
	.seg(seg),
	.digit(digit)
	
);

debouncer D1(
	.clk(clk),
	.p_b(switch_up),
	.rst_a(rst_a),
	.p_b_debouncer(s_up)
);

debouncer D2(
	.clk(clk),
	.p_b(switch_clear),
	.rst_a(rst_a),
	.p_b_debouncer(s_clear)
);

endmodule