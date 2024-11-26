`timescale 1ns / 1ps

module XOR_mMIG(
   input [15:0]in0,
   input [15:0]in1,
   output [15:0]op
    );
    
    
     wire [15:0] Temp_result;
    xor_mmig xm0(.x(in0[0]), .y(in1[0]), .op(Temp_result[0]));
    xor_mmig xm1(.x(in0[1]), .y(in1[1]), .op(Temp_result[1]));
    xor_mmig xm2(.x(in0[2]), .y(in1[2]), .op(Temp_result[2]));
    xor_mmig xm3(.x(in0[3]), .y(in1[3]), .op(Temp_result[3]));
    xor_mmig xm4(.x(in0[4]), .y(in1[4]), .op(Temp_result[4]));
    xor_mmig xm5(.x(in0[5]), .y(in1[5]), .op(Temp_result[5]));
    xor_mmig xm6(.x(in0[6]), .y(in1[6]), .op(Temp_result[6]));
    xor_mmig xm7(.x(in0[7]), .y(in1[7]), .op(Temp_result[7]));
    xor_mmig xm8(.x(in0[8]), .y(in1[8]), .op(Temp_result[8]));
    xor_mmig xm9(.x(in0[9]), .y(in1[9]), .op(Temp_result[9]));
    xor_mmig xm10(.x(in0[10]), .y(in1[10]), .op(Temp_result[10]));
    xor_mmig xm11(.x(in0[11]), .y(in1[11]), .op(Temp_result[11]));
    xor_mmig xm12(.x(in0[12]), .y(in1[12]), .op(Temp_result[12]));
    xor_mmig xm13(.x(in0[13]), .y(in1[13]), .op(Temp_result[13]));
    xor_mmig xm14(.x(in0[14]), .y(in1[14]), .op(Temp_result[14]));
    xor_mmig xm15(.x(in0[15]), .y(in1[15]), .op(Temp_result[15]));
    assign op[15:0] = Temp_result[15:0];
       
    
endmodule