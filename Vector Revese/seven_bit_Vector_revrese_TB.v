module seven_bit_Vector_revrese_TB;
  // Inputs
  reg [7:0] in_vector;
  
  // Outputs
  wire [7:0] out_vector;
  
  // Instantiate the module under test
  seven_bit_Vector_revrese dut (
    .in_vector(in_vector),
    .out_vector(out_vector)
  );
  
  // Stimulus
  initial begin
    // Test Case 1
    in_vector = 8'b01010101;
    #10;
    $display("Test Case 1:");
    $display("in_vector = %b", in_vector);
    $display("out_vector = %b \n", out_vector);
    
    // Test Case 2
    in_vector = 8'b11110000;
    #10;
    $display("Test Case 2:");
    $display("in_vector = %b", in_vector);
    $display("out_vector = %b\n", out_vector);
    
    // Test Case 3
    in_vector = 8'b00001111;
    #10;
    $display("Test Case 3:");
    $display("in_vector = %b", in_vector);
    $display("out_vector = %b\n", out_vector);
    
    // Test Case 4
    in_vector = 8'b11001100;
    #10;
    $display("Test Case 4:");
    $display("in_vector = %b", in_vector);
    $display("out_vector = %b\n", out_vector);
    
    $finish;
  end
endmodule
