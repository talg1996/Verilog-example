module N_Any_Gate_TB;
  // Parameters
  parameter N = 2;
  
  // Inputs
  reg [N-1:0] gate_in;
  reg [1:0] gate_select;
  
  // Outputs
  wire gate_out;
  
  // Instantiate the module under test
  N_Any_Gate #(N) dut (
    .gate_in(gate_in),
    .gate_select(gate_select),
    .gate_out(gate_out)
  );
  
  // Stimulus
  initial begin
    // Test Case 1: AND gate
    gate_in = 2'b11;
    gate_select = 2'b00;
    #10;
    $display("Test Case 1: AND gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");
    //////////////////////////////
     gate_in = 2'b10;
    gate_select = 2'b00;
    #10;
    $display("Test Case 1: AND gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    /////////////////////////////////////////
     gate_in = 2'b00;
    gate_select = 2'b00;
    #10;
    $display("Test Case 1: AND gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    ////////////////////////////////////////////////////////*********************////////////////////////////////////////
    // Test Case 2: XOR gate
    ////////10/////////
    gate_in = 2'b10;
    gate_select = 2'b01;
    #10;
    $display("Test Case 2: XOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    //////11//////
    gate_in = 2'b11;
    gate_select = 2'b01;
    #10;
    $display("Test Case 2: XOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");
    //////////00///////////////
    gate_in = 2'b00;
    gate_select = 2'b01;
    #10;
    $display("Test Case 2: XOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    ////////////////////***********************************************************///////////////////
    
    // Test Case 3: XNOR gate
    ///////////01//////////
    gate_in = 2'b01;
    gate_select = 2'b10;
    #10;
    $display("Test Case 3: XNOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    ///////////00//////////
     gate_in = 2'b00;
    gate_select = 2'b10;
    #10;
    $display("Test Case 3: XNOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    ///////////11//////////
     gate_in = 2'b11;
    gate_select = 2'b10;
    #10;
    $display("Test Case 3: XNOR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    //////////////////////////******************************/////////////////
    
    // Test Case 4: OR gate
    ///////////00//////////
    gate_in = 2'b00;
    gate_select = 2'b11;
    #10;
    $display("Test Case 4: OR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    /////////////10////////////////////
    gate_in = 2'b10;
    gate_select = 2'b11;
    #10;
    $display("Test Case 4: OR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    //////////////11////////////////////
    gate_in = 2'b11;
    gate_select = 2'b11;
    #10;
    $display("Test Case 4: OR gate");
    $display("gate_in = %b", gate_in);
    $display("gate_select = %b", gate_select);
    $display("gate_out = %b", gate_out);
    $display("-----------------------------");

    
    $finish;
  end
endmodule

