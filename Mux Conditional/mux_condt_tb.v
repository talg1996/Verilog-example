module mux_condt_TB;

  // Inputs
  reg [1:0] in0, in1, in2, in3;
  reg [1:0] select;
  
  // Output
  wire [1:0] out;
  
  // Instantiate the module under test
  mux_condt dut (
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .select(select),
    .out(out)
  );
  
  // Stimulus
  initial begin
    // Test Case 1: Select in0
    in0 = 2'b10;
    in1 = 2'b00;
    in2 = 2'b01;
    in3 = 2'b11;
     $display("Inputs:");
     $display("in0: %b",in0);
     $display("in1: %b",in1);
     $display("in2: %b",in2);
     $display("in3: %b",in3);
     $display("---------------");
    select = 2'b00;
    #10;
    $display("Test Case 1:");
    $display("select = %b", select);
    $display("out = %b", out);
    $display("---------------");
    
    // Test Case 2: Select in1
    select = 2'b01;
    #10;
    $display("Test Case 2:");
    $display("select = %b", select);
    $display("out = %b", out);
    $display("---------------");
    // Test Case 3: Select in2
    select = 2'b10;
    #10;
    $display("Test Case 3:");
    $display("select = %b", select);
    $display("out = %b", out);
    $display("---------------");
    // Test Case 4: Select in3
    select = 2'b11;
    #10;
    $display("Test Case 4:");
    $display("select = %b", select);
    $display("out = %b", out);
    $display("---------------");
    
    $finish;
  end
  
endmodule
