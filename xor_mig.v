`timescale 1ns / 1ps
module xor_mig(
   input x,
   input y,
   output op            
    );
    
    wire maj_A, maj_B;
    //this combination is same for MIG and mMIG so can use this in mMIG
    maj maj1 (.a(~x), .b(y), .c(1'b0), .result(maj_A));
    maj maj2 (.a(x), .b(~y), .c(1'b0), .result(maj_B));
    maj maj3 (.a(maj_A), .b(maj_B), .c(1'b1), .result(op));
    
endmodule