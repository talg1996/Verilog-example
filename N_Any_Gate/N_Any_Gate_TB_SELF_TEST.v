module N_Any_Gate_TB;
  // Parameters
  parameter N = 2;
  
  // Inputs
  reg [N-1:0] gate_in;
  reg [1:0] gate_select;
  
  // Outputs
  wire gate_out;
  reg new_out;
 
  // Instantiate the module under test
  N_Any_Gate #(N) dut (
    .gate_in(gate_in),
    .gate_select(gate_select),
    .gate_out(gate_out)
  );
  
  // Stimulus
  initial begin
   repeat(10)
    begin
    gate_in = $random;
    gate_select = $random;
   check();
    #5; //Waite for the task resualte
     if (new_out == gate_out)//check if the value we expected is what we get
               $display("Testcase Passed\n");  //displaying inputs and outputs
            else
               $display("Testcase Failed\n");  //displaying inputs and outputs
  
   end
   
  end
  
 task check;
 begin
 case(gate_select)
      2'b00 : new_out <= &gate_in;   // 00 - AND
      2'b01 : new_out <= ^gate_in;   // 01 - XOR
      2'b10 : new_out <= ~^gate_in;  // 10 - XNOR
      2'b11 : new_out <= |gate_in;   // 11 - OR
    endcase
    
    case(gate_select)
      2'b00 :  $display("Select= 00 -> AND");   // 00 -> AND
      2'b01 :  $display("Select=01 -> XOR");   // 01 -> XOR
      2'b10 :  $display("Select= 10 -> XNOR");  // 10 -> XNOR
      2'b11 :  $display("Select= 11 -> OR");   // 11 -> OR
    endcase

   end
      
endtask

endmodule