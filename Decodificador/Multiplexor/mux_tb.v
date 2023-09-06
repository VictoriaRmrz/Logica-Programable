module mux_tb();
	
reg input_gate_a;
reg input_gate_b; 
reg input_gate_sel;
wire output_m_out;


mux DUT(

.a(input_gate_a),
.b(input_gate_b),
.sel(input_gate_sel),
.m_out(output_m_out)
);

initial
begin
	input_gate_a = 0;
	input_gate_b = 1;
	input_gate_sel = 0;
	#100
	input_gate_a = 0;
	input_gate_b = 1;
	input_gate_sel = 1;
	#100
	input_gate_a = 1;
	input_gate_b = 0;
	input_gate_sel = 0;
	#100
	input_gate_a = 1;
	input_gate_b = 0;
	input_gate_sel = 1;
	#100
	$stop;
end

endmodule
