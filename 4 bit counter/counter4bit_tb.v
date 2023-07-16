
module FourBitCounter_TB;
  reg clk;
  reg reset;
  wire [3:0] count;
  
  FourBitCounter dut (
    .clk(clk),
    .reset(reset),
    .count(count)
  );
  
  initial begin  // Clock generation
   clk = 0;
   forever #5 clk = ~clk;
end

  initial begin
    reset = 1;//counter =0
    
    #10 reset = 0;  
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    
     $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    
     $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    
     $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    
    reset=1;
     $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    reset=0;
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    
     $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $display("Count: %b", count);
    
    #10;
    $finish;
  end
endmodule

