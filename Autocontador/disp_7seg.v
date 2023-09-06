module disp_7seg (
	input clk,
	input [3:0] units, tens, hund, thous,
	input rst,
	output [7:0] seg,
	output reg [3:0] digit
);

reg [3:0] digit_data;
reg [1:0] digit_pos;
reg [23:0] prescaler;

decoder7seg U1(
	.clk(clk),
	//.bcd(digit_data),
	.rst(1),
	.seg(seg)
);


always @(posedge clk)
begin
	prescaler <= prescaler + 24'd 1;

	if(prescaler == 24'd 50000)
	begin
		prescaler <= 0;
		digit_pos <= digit_pos + 2'd 1;
		
		if(digit_pos == 0)
		begin
			digit_data <= units;
			digit <= 4'b 1110;
		end
		
		if(digit_pos == 2'd 1)
		begin
			digit_data <= tens;
			digit <= 4'b 1101;
		end
		
		if(digit_pos == 2'd 2)
		begin
			digit_data <= hund;
			digit <= 4'b 1011;
		end
		
		if(digit_pos == 2'd 3)
		begin
			digit_data <= thous;
			digit <= 4'b 0111;
		end
	end
end

endmodule



