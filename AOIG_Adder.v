`timescale 1ns / 1ps
`include "and.v"

module AOIG_Adder(
    input wire A,  
    input wire B,  
    input wire Cin,  
    output wire Sum,  
    output wire Cout  
);
    wire comp_cin, comp_A, comp_B;
    wire and1, and2, and3, and4, and5, and6, and7, and8, and9;
    assign comp_cin = ~Cin; 
    assign comp_A = ~A;
    assign comp_B = ~B;

////using AOIG
AND A1(.a(comp_B), .b(comp_cin),.result(and1));
AND A2(.a(Cin), .b(B),.result(and2));
AND A3(.a(~and1), .b(~and2),.result(and3));
AND A4(.a(A), .b(~and3),.result(and4));
AND A5(.a(comp_A), .b(and3),.result(and5));
AND A6(.a(~and4), .b(~and5),.result(and6));
assign Sum = ~and6;

AND A7(.a(~and2), .b(comp_A),.result(and7));
AND A8(.a(~and7), .b(~and1),.result(Cout));// for Cout


endmodule