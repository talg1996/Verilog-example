module no_1s (

   input clk, reset ,                         //clock and reset declared as input
   input       [15:0] i_a   ,                    //16 bit input
   output reg  [ 3:0] no_ones,
   output reg end_flag  );                //4 bit output

integer idx = 1'b0 ;

/*add the each bit till i is less than 16 bit*/
always @ (posedge clk)
   begin
      if (reset)begin
         no_ones <= 4'b0 ;                //number of 1s will be 0 if reset is 1
         idx<=0;
         end_flag<=0;
      end
      else
         begin
            if (idx < 16)
               no_ones <= no_ones + i_a[idx];   //add i_a till i = 16
            else
               end_flag<=1;
         end
      idx <= idx + 1;             //increment i
   end

endmodule                                     //end of number of 1s counter


module no_1s_tb                           ;//testbench module 

reg [15:0] a                              ;//register declaration for a              
wire [3:0] no_ones                        ;//wire declaration for no. of 1s
reg [3:0] new_no                          ;//register declaration for test output no. of 1s
integer idx                                 ;//integer declaration
reg clk, reset                            ;//clock and reset declaration
wire end_flag;

no_1s dut(clk,reset,a,no_ones,end_flag)                                ;

initial begin
   clk            =  0                    ;//clock initialized to 0
   forever begin 
   #5 clk =  ~clk                 ;//clock with 5ns rising edge and 5ns falling edge
   $display("flag= %b  |   ones=%d",end_flag,idx);
   end
end

initial begin
  reset     =  1                          ;//reset initialized to 1
  #6 reset =  0                          ;//reset initialized to 0
  idx=0;
#300 $finish                              ;//finish the execution with 200ns delay
end

initial begin
   stimulus()                                                                             ;//calling task
   if (new_no == no_ones)
      $display("a = %b, no_ones = %b, new_no = %b, Testcase Passed", a, no_ones, new_no)  ;//display for output Pass

   else
      $display("a = %b, no_ones = %b, new_no = %b, Testcase Failed", a, no_ones, new_no)  ;//dispaly for output Fail

end

task stimulus                             ;//task
   begin
      new_no = 0                          ;//initialize no. of 1s to 0
      a = $random                         ;//input generation
      for (idx = 0; idx < 16; idx = idx + 1)
         begin
            if (a[idx] == 1)
               new_no = new_no + 1; #10   ;//increment the no. of 1 counter of testbench
         end
   end
endtask

endmodule                                  //end of testbench 
