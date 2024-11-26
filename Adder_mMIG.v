`timescale 1ns / 1ps

module Adder_mMIG(        
    input wire [15:0] A,     
    input wire [15:0] B,
    output wire [15:0] out
);
    wire [15:0] Temp_mMIG_Result;
    wire [15:0] Temp_mMIG_Cout;
    
    mMIG_Adder FA0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(Temp_mMIG_Result[0]), .Cout(Temp_mMIG_Cout[0]));
    mMIG_Adder FA1(.A(A[1]), .B(B[1]), .Cin(Temp_mMIG_Cout[0]), .Sum(Temp_mMIG_Result[1]), .Cout(Temp_mMIG_Cout[1]));
    mMIG_Adder FA2(.A(A[2]), .B(B[2]), .Cin(Temp_mMIG_Cout[1]), .Sum(Temp_mMIG_Result[2]), .Cout(Temp_mMIG_Cout[2]));
    mMIG_Adder FA3(.A(A[3]), .B(B[3]), .Cin(Temp_mMIG_Cout[2]), .Sum(Temp_mMIG_Result[3]), .Cout(Temp_mMIG_Cout[3]));
    mMIG_Adder FA4(.A(A[4]), .B(B[4]), .Cin(Temp_mMIG_Cout[3]), .Sum(Temp_mMIG_Result[4]), .Cout(Temp_mMIG_Cout[4]));
    mMIG_Adder FA5(.A(A[5]), .B(B[5]), .Cin(Temp_mMIG_Cout[4]), .Sum(Temp_mMIG_Result[5]), .Cout(Temp_mMIG_Cout[5]));
    mMIG_Adder FA6(.A(A[6]), .B(B[6]), .Cin(Temp_mMIG_Cout[5]), .Sum(Temp_mMIG_Result[6]), .Cout(Temp_mMIG_Cout[6]));
    mMIG_Adder FA7(.A(A[7]), .B(B[7]), .Cin(Temp_mMIG_Cout[6]), .Sum(Temp_mMIG_Result[7]), .Cout(Temp_mMIG_Cout[7]));
    mMIG_Adder FA8(.A(A[8]), .B(B[8]), .Cin(Temp_mMIG_Cout[7]), .Sum(Temp_mMIG_Result[8]), .Cout(Temp_mMIG_Cout[8]));
    mMIG_Adder FA9(.A(A[9]), .B(B[9]), .Cin(Temp_mMIG_Cout[8]), .Sum(Temp_mMIG_Result[9]), .Cout(Temp_mMIG_Cout[9]));
    mMIG_Adder FA10(.A(A[10]), .B(B[10]), .Cin(Temp_mMIG_Cout[9]), .Sum(Temp_mMIG_Result[10]), .Cout(Temp_mMIG_Cout[10]));
    mMIG_Adder FA11(.A(A[11]), .B(B[11]), .Cin(Temp_mMIG_Cout[10]), .Sum(Temp_mMIG_Result[11]), .Cout(Temp_mMIG_Cout[11]));
    mMIG_Adder FA12(.A(A[12]), .B(B[12]), .Cin(Temp_mMIG_Cout[11]), .Sum(Temp_mMIG_Result[12]), .Cout(Temp_mMIG_Cout[12]));
    mMIG_Adder FA13(.A(A[13]), .B(B[13]), .Cin(Temp_mMIG_Cout[12]), .Sum(Temp_mMIG_Result[13]), .Cout(Temp_mMIG_Cout[13]));
    mMIG_Adder FA14(.A(A[14]), .B(B[14]), .Cin(Temp_mMIG_Cout[13]), .Sum(Temp_mMIG_Result[14]), .Cout(Temp_mMIG_Cout[14]));
    mMIG_Adder FA15(.A(A[15]), .B(B[15]), .Cin(Temp_mMIG_Cout[14]), .Sum(Temp_mMIG_Result[15]), .Cout(Temp_mMIG_Cout[15]));
    assign out[15:0] = Temp_mMIG_Result[15:0];

endmodule
