module FourBitCounter(
  input wire clk,
  input wire reset, 
  output reg [3:0] count
);
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0000; // Set the output to zero
      end
    else
      count <= count + 1; //Increase by 1 
  end
endmodule
/////////////////////////
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
    #2 reset = 1;//counter =0
    $display("RESET \n");
    #1 reset = 0;  
    
     #41 reset = 1;// Reset output 
       $display("RESET \n");
      #1 reset = 0;
      #160 // more 16 steps to see full function without reset interrupt
    
    $finish;
  end
  
  initial begin
 $monitor("t=%3d  |  reset=%1b  | count=%2d \n", $time, reset,count );
  end
  
  
endmodule
