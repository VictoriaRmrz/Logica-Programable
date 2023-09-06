module decoder7seg(
	input clk,
	input [3:0] count,
	input rst,
	output reg [7:0] seg
);

reg [6:0] seg7_d;
reg [6:0] seg7_q;

always @(posedge clk or negedge rst)
begin
	if(!rst)
		seg7_q <= 7'b 1111111;
	else
		seg7_d <= seg7_d;
end

always @(*)
begin
	seg7_d = seg7_q;
	case(count)
		0:         //gfedcba
			seg7_d = 7'b 1000000;
		1:
			seg7_d = 7'b 1111001;
		2:
			seg7_d = 7'b 0100100;
		3:
			seg7_d = 7'b 0110000;
		4:
			seg7_d = 7'b 0011001;
		5:
			seg7_d = 7'b 0010010;
		6:
			seg7_d = 7'b 0000010;
		7:
			seg7_d = 7'b 1111000;
		8:
			seg7_d = 7'b 0000000;
		9:
			seg7_d = 7'b 0011000;
		
		
		default:
			seg7_d = 7'b 1111111;
	endcase
end
endmodule