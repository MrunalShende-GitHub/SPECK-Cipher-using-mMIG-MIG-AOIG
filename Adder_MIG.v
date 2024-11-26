`timescale 1ns / 1ps

module Adder_MIG(        
    input wire [15:0] A,     
    input wire [15:0] B,
    output wire [15:0] out
);
    wire [15:0] Temp_MIG_Result;
    wire [15:0] Temp_MIG_Cout;
    
MIG_Adder MA0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(Temp_MIG_Result[0]), .Cout(Temp_MIG_Cout[0]));
MIG_Adder MA1(.A(A[1]), .B(B[1]), .Cin(Temp_MIG_Cout[0]), .Sum(Temp_MIG_Result[1]), .Cout(Temp_MIG_Cout[1]));
MIG_Adder MA2(.A(A[2]), .B(B[2]), .Cin(Temp_MIG_Cout[1]), .Sum(Temp_MIG_Result[2]), .Cout(Temp_MIG_Cout[2]));
MIG_Adder MA3(.A(A[3]), .B(B[3]), .Cin(Temp_MIG_Cout[2]), .Sum(Temp_MIG_Result[3]), .Cout(Temp_MIG_Cout[3]));
MIG_Adder MA4(.A(A[4]), .B(B[4]), .Cin(Temp_MIG_Cout[3]), .Sum(Temp_MIG_Result[4]), .Cout(Temp_MIG_Cout[4]));
MIG_Adder MA5(.A(A[5]), .B(B[5]), .Cin(Temp_MIG_Cout[4]), .Sum(Temp_MIG_Result[5]), .Cout(Temp_MIG_Cout[5]));
MIG_Adder MA6(.A(A[6]), .B(B[6]), .Cin(Temp_MIG_Cout[5]), .Sum(Temp_MIG_Result[6]), .Cout(Temp_MIG_Cout[6]));
MIG_Adder MA7(.A(A[7]), .B(B[7]), .Cin(Temp_MIG_Cout[6]), .Sum(Temp_MIG_Result[7]), .Cout(Temp_MIG_Cout[7]));
MIG_Adder MA8(.A(A[8]), .B(B[8]), .Cin(Temp_MIG_Cout[7]), .Sum(Temp_MIG_Result[8]), .Cout(Temp_MIG_Cout[8]));
MIG_Adder MA9(.A(A[9]), .B(B[9]), .Cin(Temp_MIG_Cout[8]), .Sum(Temp_MIG_Result[9]), .Cout(Temp_MIG_Cout[9]));
MIG_Adder MA10(.A(A[10]), .B(B[10]), .Cin(Temp_MIG_Cout[9]), .Sum(Temp_MIG_Result[10]), .Cout(Temp_MIG_Cout[10]));
MIG_Adder MA11(.A(A[11]), .B(B[11]), .Cin(Temp_MIG_Cout[10]), .Sum(Temp_MIG_Result[11]), .Cout(Temp_MIG_Cout[11]));
MIG_Adder MA12(.A(A[12]), .B(B[12]), .Cin(Temp_MIG_Cout[11]), .Sum(Temp_MIG_Result[12]), .Cout(Temp_MIG_Cout[12]));
MIG_Adder MA13(.A(A[13]), .B(B[13]), .Cin(Temp_MIG_Cout[12]), .Sum(Temp_MIG_Result[13]), .Cout(Temp_MIG_Cout[13]));
MIG_Adder MA14(.A(A[14]), .B(B[14]), .Cin(Temp_MIG_Cout[13]), .Sum(Temp_MIG_Result[14]), .Cout(Temp_MIG_Cout[14]));
MIG_Adder MA15(.A(A[15]), .B(B[15]), .Cin(Temp_MIG_Cout[14]), .Sum(Temp_MIG_Result[15]), .Cout(Temp_MIG_Cout[15]));
assign out[15:0] = Temp_MIG_Result[15:0];

endmodule












    


    