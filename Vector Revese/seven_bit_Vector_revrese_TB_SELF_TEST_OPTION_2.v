
module seven_bit_Vector_revrese_TB;
  // Inputs
  reg [7:0] in_vector;
  
  // Outputs
  wire [7:0] out_vector;
  reg [7:0] new_out;
  
  // Instantiate the module under test
  seven_bit_Vector_revrese dut (
    .in_vector(in_vector),
    .out_vector(out_vector)
  );
  
  // Stimulus
  initial begin
   repeat(6)
   begin
    in_vector =$random;
    check();
    #5;
    print();
    #1;
    if(new_out==out_vector)
    $display("Testcase Passed\n\n\n");  //displaying inputs and outputs
    
    else
    $display("Testcase Failed\n\n\n");  //displaying inputs and outputs
  
  end
  end
  
 
  task check;
    begin
      new_out= {in_vector[0], in_vector[1], in_vector[2], in_vector[3], in_vector[4], in_vector[5], in_vector[6], in_vector[7]};
    end
  endtask
  
  task print;
    begin
      $display("In vector ------= %b", in_vector);
    $display("Out vector------= %b ", out_vector);
    $display("Expected vector-= %b",  new_out);
    end
  endtask
  
endmodule
