`timescale 1ns / 1ps
`include "maj.v"
`include "min.v"
module MIG_Adder(
    input wire A,  
    input wire B,  
    input wire Cin,  
    output wire Sum,  
    output wire Cout  
);
    wire op1;
    wire op2;
    wire op3;
    wire comp_cin, comp_A, comp_B;
    assign comp_cin = ~Cin; 
    assign comp_A = ~A;
    assign comp_B = ~B;

    //Using minority majority
    maj maj1(.a(A), .b(B), .c(Cin), .result(Cout));//Cout
    
    maj maj2 (.a(comp_A), .b(B), .c(Cin), .result(op1));  
    maj maj3 (.a(A), .b(B), .c(comp_cin), .result(op2) );
    maj maj4 (.a(op1), .b(comp_B), .c(op2), .result(Sum));//Sum
endmodule