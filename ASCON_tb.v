`timescale 1ns / 1ps

module ASCON_tb;
    reg [4:0] x_in;
    wire [4:0] out;
    
    ASCON dut (.in(x_in), .out(out));
    
initial begin
    #20;
    x_in = 5'b00000;
//    #20;
//    x_in = 5'b00001;
//    #20;
//    x_in = 5'b00010;
//    #20;
//    x_in = 5'b00011;
//    #20;
//    x_in = 5'b00100;
//    #20;            
//    x_in = 5'b000101;
//    #20;
//    x_in = 5'b000110;
//    #20;
//    x_in = 5'b000111; 
    #100 $finish;
end

    initial begin
        $monitor("Time=%0d,x_in=%h,  out=%h",$time, x_in, out);
    end
    
endmodule