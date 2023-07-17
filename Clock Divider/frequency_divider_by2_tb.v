module frequency_divider_by2_tb;
output reg clk;
output reg rst;
input wire out_clk;

frequency_divider_by2 dut (
  .clk(clk),
  .rst(rst),
  .out_clk(out_clk)
);
initial
clk = 1'b0; //Init clk to 0
always
#10 clk = ~clk; //T=20

initial
begin
$monitor("time=%3d | clk = %b | rst = %b | out_clk = %b \n ",$time,clk,rst,out_clk);
rst =0;
#20 rst =1;
#100 $finish;
end

endmodule
 
