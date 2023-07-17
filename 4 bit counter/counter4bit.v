module FourBitCounter(
  input wire clk,
  input wire reset, 
  output reg [3:0] count
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      count <= 4'b0000; // Set the output to zero
    else
      count <= count + 1; //Increase by 1 
  end
endmodule
