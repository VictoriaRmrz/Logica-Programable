module Complemento(
	input clk,
	input signed [15:0] data_in,
	output seg1, seg2, seg3
);

wire [6:0] signo; 
wire signed [15:0] complemento_a_2;

always @(posedge clk)
begin
	if(data_in[15] == 1)
	begin
		complemento_a_2 <= -data_in;
		signo = 7'b0100000;
	end
	else
		complemento_a_2 <= complemento_a_2;
	
end

wire [3:0] entrada_unidades = complemento_a_2 % 10;
wire [3:0] entrada_decenas = (complemento_a_2 / 10) % 10;
wire [3:0] entrada_centenas = (complemento_a_2 / 100) % 10;

seven7 DISPLAY1(
	.bcd(entrada_unidades),
	.seg(seg1)
);

seven7 DISPLAY2(
	.bcd(entrada_decenas),
	.seg(seg2)
);

seven7 DISPLAY3(
	.bcd(entrada_centenas),
	.seg(seg3)
);

seven7 DISPLAY4(
	.bcd(signo),
	.seg(seg4)
);

assign HEX3 = signo;

endmodule