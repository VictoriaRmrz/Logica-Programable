module decoder9999(
	input [9:0] SW,
	output [6:0]	  HEX0,
						  HEX1,
						  HEX2,
						  HEX3
);

wire [3:0] entrada_unidades = SW % 10;
wire [3:0] entrada_decenas = (SW / 10) % 10;
wire [3:0] entrada_centenas = (SW / 100) % 10;
wire [3:0] entrada_millares = SW / 1000;

decoderSimple UNIDADES(
	.entrada_decoder(entrada_unidades),
	.salida_decoder(HEX0)
);

decoderSimple DECENAS(
	.entrada_decoder(entrada_decenas),
	.salida_decoder(HEX1)
);

decoderSimple CENTENAS(
	.entrada_decoder(entrada_centenas),
	.salida_decoder(HEX2)
);

decoderSimple MILLARES(
	.entrada_decoder(entrada_millares),
	.salida_decoder(HEX3)
);



endmodule