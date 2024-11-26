`timescale 1ns / 1ps

module XORall(
   input [15:0]in0,
   input [15:0]in1,
   output [15:0]AOIG_op
//   output [15:0]mMIG_op
    );
    
    assign AOIG_op[0] = (~in0[0] & in1[0])|(in0[0] & ~in1[0]);
    assign AOIG_op[1] = (~in0[1] & in1[1])|(in0[1] & ~in1[1]);
    assign AOIG_op[2] = (~in0[2] & in1[2])|(in0[2] & ~in1[2]);
    assign AOIG_op[3] = (~in0[3] & in1[3])|(in0[3] & ~in1[3]);    
    assign AOIG_op[4] = (~in0[4] & in1[4])|(in0[4] & ~in1[4]);
    assign AOIG_op[5] = (~in0[5] & in1[5])|(in0[5] & ~in1[5]);
    assign AOIG_op[6] = (~in0[6] & in1[6])|(in0[6] & ~in1[6]);
    assign AOIG_op[7] = (~in0[7] & in1[7])|(in0[7] & ~in1[7]);    
    assign AOIG_op[8] = (~in0[8] & in1[8])|(in0[8] & ~in1[8]);
    assign AOIG_op[9] = (~in0[9] & in1[9])|(in0[9] & ~in1[9]);
    assign AOIG_op[10] = (~in0[10] & in1[10])|(in0[10] & ~in1[10]);
    assign AOIG_op[11] = (~in0[11] & in1[11])|(in0[11] & ~in1[11]);    
    assign AOIG_op[12] = (~in0[12] & in1[12])|(in0[12] & ~in1[12]);
    assign AOIG_op[13] = (~in0[13] & in1[13])|(in0[13] & ~in1[13]);
    assign AOIG_op[14] = (~in0[14] & in1[14])|(in0[14] & ~in1[14]);
    assign AOIG_op[15] = (~in0[15] & in1[15])|(in0[15] & ~in1[15]); 

       
//    //total Majority (min) Inverter Graph
//    wire [15:0] Temp_result;
//    xor_mig xm0(.x(in0[0]), .y(in1[0]), .op(Temp_result[0]));
//    xor_mig xm1(.x(in0[1]), .y(in1[1]), .op(Temp_result[1]));
//    xor_mig xm2(.x(in0[2]), .y(in1[2]), .op(Temp_result[2]));
//    xor_mig xm3(.x(in0[3]), .y(in1[3]), .op(Temp_result[3]));
//    xor_mig xm4(.x(in0[4]), .y(in1[4]), .op(Temp_result[4]));
//    xor_mig xm5(.x(in0[5]), .y(in1[5]), .op(Temp_result[5]));
//    xor_mig xm6(.x(in0[6]), .y(in1[6]), .op(Temp_result[6]));
//    xor_mig xm7(.x(in0[7]), .y(in1[7]), .op(Temp_result[7]));
//    xor_mig xm8(.x(in0[8]), .y(in1[8]), .op(Temp_result[8]));
//    xor_mig xm9(.x(in0[9]), .y(in1[9]), .op(Temp_result[9]));
//    xor_mig xm10(.x(in0[10]), .y(in1[10]), .op(Temp_result[10]));
//    xor_mig xm11(.x(in0[11]), .y(in1[11]), .op(Temp_result[11]));
//    xor_mig xm12(.x(in0[12]), .y(in1[12]), .op(Temp_result[12]));
//    xor_mig xm13(.x(in0[13]), .y(in1[13]), .op(Temp_result[13]));
//    xor_mig xm14(.x(in0[14]), .y(in1[14]), .op(Temp_result[14]));
//    xor_mig xm15(.x(in0[15]), .y(in1[15]), .op(Temp_result[15]));
//    assign mMIG_op[15:0] = Temp_result[15:0];
    
  
endmodule






























//    //total minority  Majority Inverter Graph
//     wire [15:0] Temp_result;
//    xor_mmig xm0(.x(in0[0]), .y(in1[0]), .op(Temp_result[0]));
//    xor_mmig xm1(.x(in0[1]), .y(in1[1]), .op(Temp_result[1]));
//    xor_mmig xm2(.x(in0[2]), .y(in1[2]), .op(Temp_result[2]));
//    xor_mmig xm3(.x(in0[3]), .y(in1[3]), .op(Temp_result[3]));
//    xor_mmig xm4(.x(in0[4]), .y(in1[4]), .op(Temp_result[4]));
//    xor_mmig xm5(.x(in0[5]), .y(in1[5]), .op(Temp_result[5]));
//    xor_mmig xm6(.x(in0[6]), .y(in1[6]), .op(Temp_result[6]));
//    xor_mmig xm7(.x(in0[7]), .y(in1[7]), .op(Temp_result[7]));
//    xor_mmig xm8(.x(in0[8]), .y(in1[8]), .op(Temp_result[8]));
//    xor_mmig xm9(.x(in0[9]), .y(in1[9]), .op(Temp_result[9]));
//    xor_mmig xm10(.x(in0[10]), .y(in1[10]), .op(Temp_result[10]));
//    xor_mmig xm11(.x(in0[11]), .y(in1[11]), .op(Temp_result[11]));
//    xor_mmig xm12(.x(in0[12]), .y(in1[12]), .op(Temp_result[12]));
//    xor_mmig xm13(.x(in0[13]), .y(in1[13]), .op(Temp_result[13]));
//    xor_mmig xm14(.x(in0[14]), .y(in1[14]), .op(Temp_result[14]));
//    xor_mmig xm15(.x(in0[15]), .y(in1[15]), .op(Temp_result[15]));
//    assign op[15:0] = Temp_result[15:0];  
