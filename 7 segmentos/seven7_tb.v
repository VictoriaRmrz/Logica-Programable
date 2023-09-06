module seven7_tb();
reg [3:0] entradas_bcd;
wire [6:0] salidas_seg;

seven7 DUT(
	.bcd(entradas_bcd),
	.seg(salidas_seg)
);
initial
begin
entradas_bcd = 0;
#100
entradas_bcd = 1;
#100
entradas_bcd = 2;
#100
entradas_bcd = 3;
#100
entradas_bcd = 4;
#100
entradas_bcd = 5;
#100
entradas_bcd = 6;
#100
entradas_bcd = 7;
#100
entradas_bcd = 8;
#100
entradas_bcd = 9;
#100
$stop;
end
endmodule