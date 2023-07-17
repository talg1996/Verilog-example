
module FourBitCounter_TB;
  reg clk;
  reg reset;
  wire [3:0] count;
  reg  [3:0]Test_count;
  
  FourBitCounter dut (
    .clk(clk),
    .reset(reset),
    .count(count)
  );
  
  initial begin  // Clock generation
  Test_count=0;
   clk = 0;
   forever #5 clk = ~clk;
end


  initial begin
    #2 reset = 1;//counter =0
    
    #1 reset = 0;  
    
     #40 reset = 1;// Reset output after 112 times
      #1 reset = 0;
      #160 // more 16 steps to see full function without reset interrupt
    
    $finish;
  end
  
  initial begin
 $monitor("t=%3d|  reset=%1b  | count=%2d \n", $time, reset,count );
  end
  
endmodule
