/*


	Maquina de estados Finita, para simular un sistema de contraseña
	Entradas:
			clk, rst_a, 4 bits para la contraseña
	Salidas:
			1, Pass
	Contraseña = 6987;
*/


module FSM_PW #(parameter Bits = 4)(

	input 						clk,
									rst_a,
									enable_data,
	input [Bits - 1 : 0] 	entrada_pw,
	
	output reg 					pass,
	output [2:0]				estado_led,
									estado_debouncer

);

// Parametros de estado

parameter	STATE_0 = 0,
				STATE_1 = 1,
				STATE_2 = 2,
				STATE_3 = 3,
				STATE_4 = 4;

// Definicion de registros para estados
reg [2:0]	current_state, next_state;

//Always para asignacion del siguiente estado
always @(posedge clk or negedge rst_a)
begin
	if(!rst_a)
	begin
		current_state <= STATE_0;
	end
	else
	begin
		current_state <= next_state;
	end
end

reg enable_posedge;

// PROCESO PARA DETECTAR LOS FLANCOS DE SUBIDA DEL enable_data, y cada cambio hacer que la salida enable_posedge se cambie (toggle)
always @(posedge enable_data or negedge rst_a)
begin
	if(!rst_a)
		enable_posedge <= 0;
	else
		enable_posedge <= !enable_posedge;
end

		
//Ver el estado actual, para hacer modificacion al estado siguiente
always @(posedge enable_data)
begin

pass = 0;
	case(current_state)
		STATE_0:
		begin
		if(entrada_pw == 6)
			next_state <= STATE_1;
		else
			next_state <= STATE_0;
		end
		
		STATE_1:
		begin
		if(entrada_pw == 9)
			next_state <= STATE_2;
		else
			next_state <= STATE_0;
		end
		
		STATE_2:
		begin
		if(entrada_pw == 8)
			next_state <= STATE_3;
		else
			next_state <= STATE_0;
		end
		
		STATE_3:
		begin
		if(entrada_pw == 7)
			next_state <= STATE_4;
		else
			next_state <= STATE_0;
		end
		
		STATE_4:
		begin
		
		pass = 1;
		
		if(entrada_pw != 0)
			next_state <= STATE_0;
		else
			next_state <= STATE_4;
		end
		
		
		default:
			begin
			next_state <= STATE_0;
			end
	endcase
end

assign estado_led = current_state;
assign estado_debouncer = enable_posedge;
		
endmodule 