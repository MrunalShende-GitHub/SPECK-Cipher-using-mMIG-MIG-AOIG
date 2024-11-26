`timescale 1ns / 1ps
module xor_mmig(
   input x,
   input y,
   output op            
    );
    
    wire min_A, min_B;
    //this combination is same for MIG and mMIG so can use this in mMIG
    min min1 (.a(~x), .b(y), .c(1'b0), .result(min_A));
    min min2 (.a(x), .b(~y), .c(1'b0), .result(min_B));
    min min3 (.a(min_A), .b(min_B), .c(1'b0), .result(op));
    
endmodule