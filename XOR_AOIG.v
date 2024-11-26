`timescale 1ns / 1ps

module XOR_AOIG(
   input [15:0]in0,
   input [15:0]in1,
   output [15:0]op
    );
    
    assign op[0] = (~in0[0] & in1[0])|(in0[0] & ~in1[0]);
    assign op[1] = (~in0[1] & in1[1])|(in0[1] & ~in1[1]);
    assign op[2] = (~in0[2] & in1[2])|(in0[2] & ~in1[2]);
    assign op[3] = (~in0[3] & in1[3])|(in0[3] & ~in1[3]);    
    assign op[4] = (~in0[4] & in1[4])|(in0[4] & ~in1[4]);
    assign op[5] = (~in0[5] & in1[5])|(in0[5] & ~in1[5]);
    assign op[6] = (~in0[6] & in1[6])|(in0[6] & ~in1[6]);
    assign op[7] = (~in0[7] & in1[7])|(in0[7] & ~in1[7]);    
    assign op[8] = (~in0[8] & in1[8])|(in0[8] & ~in1[8]);
    assign op[9] = (~in0[9] & in1[9])|(in0[9] & ~in1[9]);
    assign op[10] = (~in0[10] & in1[10])|(in0[10] & ~in1[10]);
    assign op[11] = (~in0[11] & in1[11])|(in0[11] & ~in1[11]);    
    assign op[12] = (~in0[12] & in1[12])|(in0[12] & ~in1[12]);
    assign op[13] = (~in0[13] & in1[13])|(in0[13] & ~in1[13]);
    assign op[14] = (~in0[14] & in1[14])|(in0[14] & ~in1[14]);
    assign op[15] = (~in0[15] & in1[15])|(in0[15] & ~in1[15]); 

endmodule
