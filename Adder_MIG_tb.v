
`timescale 1ns / 1ps
`include "/home/mrunal/Desktop/Verilog_Programs/SPECK/SPECK.srcs/sources_1/new/Adder_MIG.v"

module Adder_MIG_tb;
    reg [15:0] A;
    reg [15:0] B;
    // Outputs
    wire [15:0] out;

    Adder_MIG dut (
    
        .A(A), 
        .B(B), 
        .out(out)
         );
    initial begin      
        #10  A = 16'd100; B = 16'd50;         
    end
endmodule