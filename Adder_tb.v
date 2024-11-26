`timescale 1ns / 1ps

module Adder_tb;

    reg [15:0] A;
    reg [15:0] B;
    wire [15:0] AOIG_out;
    wire [15:0] MIG_out;
    wire [15:0] mMIG_out;

    Adder uut (
        .A(A), 
        .B(B), 
        .AOIG_out(AOIG_out), 
        .MIG_out(MIG_out), 
        .mMIG_out(mMIG_out)
    );

    initial begin
       #10 A = 16'd10; B = 16'd10; 
    end

endmodule
