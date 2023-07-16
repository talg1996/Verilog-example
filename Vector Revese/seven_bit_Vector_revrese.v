module seven_bit_Vector_revrese(
input [7:0] in_vector,
output [7:0] out_vector  
);

      assign out_vector = {in_vector[0], in_vector[1], in_vector[2], in_vector[3], in_vector[4], in_vector[5], in_vector[6], in_vector[7]};
    /*
assign out_vector[0]=in_vector[7];
assign out_vector[1]=in_vector[6];
assign out_vector[2]=in_vector[5];
assign out_vector[3]=in_vector[4];
assign out_vector[4]=in_vector[3];
assign out_vector[5]=in_vector[2];
assign out_vector[6]=in_vector[1];
assign out_vector[7]=in_vector[0];
*/
endmodule

