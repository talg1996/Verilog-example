module no_1s (

input clk, reset ,                         //clock and reset declared as input
input       [15:0] i_a   ,                    //16 bit input
output reg  [ 3:0] no_ones  );                //4 bit output

integer idx = 1'b0 ;

/*add the each bit till i is less than 16 bit*/
always @ (posedge clk)
   begin
      if (reset)
         no_ones <= 4'b0                     ;//number of 1s will be 0 if reset is 1
      else
         begin
            if (idx < 16)
               no_ones <= no_ones + i_a[idx]   ;//add i_a till i = 16
         end
      idx <= idx + 1                             ;//increment i
   end

endmodule                                     //end of number of 1s counter
