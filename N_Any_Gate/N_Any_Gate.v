//** N-input control gate (AND, XOR, XNOR, OR) ** //
module N_Any_Gate #(parameter N = 2) (
  input [N-1:0] gate_in,           // Gate inputs
  input [1:0] gate_select,         // Gate control (Decide the type of gate: '00'->AND, '01'->XOR, '10'->XNOR, '11'->OR)
  output reg gate_out              // Gate output
);

  always @ (*) begin
    case(gate_select)
      2'b00 : gate_out <= &gate_in;   // 00 - AND
      2'b01 : gate_out <= ^gate_in;   // 01 - XOR
      2'b10 : gate_out <= ~^gate_in;  // 10 - XNOR
      2'b11 : gate_out <= |gate_in;   // 11 - OR
    endcase
  end

endmodule
