module mux_condt(
               

//port declaration

input [1:0]in0, in1, in2, in3,
input [1:0]select,             
output [1:0]out           
 );

assign out = select[1] ? (select[0] ? in3 : in2) : ( select[0] ? in1 : in0) ;  //logic expression for mux 
  
endmodule // Mux 
