//`timescale 1ps / 1ps
//`include "Adder.v"
//`include "XORall.v"

//module SPECK(    
//    input [31:0] in,   
//        input [63:0] k,
//    output [15:0] left,
//    output [15:0] right
//);
//    // Internal variables
////     wire [63:0] k;  // Simplified key handling
//     wire [15:0] left_part, right_part;
//     wire [15:0] r_left, t_left, r_right, s_right, s_left, tt_left;
////     assign k = 64'h627C9A753976C941;
//     assign left_part[15:0] = in[31:16];
//     assign right_part[15:0] = in[15:0];  //divide the PT
//     assign r_right = {right_part[13:0], right_part[15:14]}; //rotate left and right by 7 and 2 resprctively
//     assign r_left = {left_part[6:0],left_part[15:7]}; 

////Final mMIG speck working dont change anything
//Adder add1(.A(r_left), .B(right_part), .mMIG_out(s_left));
//XORall xor1(.in0(s_left), .in1(k), .mMIG_op(t_left)); 
//XORall xor2(.in0(t_left), .in1(r_right), .mMIG_op(s_right));
////XORall xor3(.in0(t_left), .in1(16'd0), .op(tt_left));


//assign left[15:0] = t_left[15:0];
////assign left[15:0] = s_left[15:0];
//assign right[15:0] = s_right[15:0];

//endmodule



//`timescale 1ps / 1ps
//`include "Adder.v"
//`include "XORall.v"

//module SPECK(    
//    input [31:0] in,   
//    input [63:0] key,  // Added key as input
//    output [15:0] left,
//    output [15:0] right
//);

//    // Internal variables
//    wire [15:0] left_part, right_part;
//    wire [15:0] r_left, t_left, r_right, s_right, s_left;

//    // Avoid optimization with KEEP attribute
////    (* KEEP = "TRUE" *) wire [15:0] k;

//    assign k = key[15:0];  // Use part of key for operations

//    assign left_part[15:0] = in[31:16];
//    assign right_part[15:0] = in[15:0];  // Divide the input

//    assign r_right = {right_part[13:0], right_part[15:14]}; // Rotate right_part
//    assign r_left = {left_part[6:0], left_part[15:7]};  // Rotate left_part

//    // SPECK encryption steps
//    Adder add1(.A(r_left), .B(right_part), .AOIG_out(s_left));
//    XORall xor1(.in0(s_left), .in1(k), .AOIG_op(t_left)); 
//    XORall xor2(.in0(t_left), .in1(r_right), .AOIG_op(s_right));

//    // Assign outputs
//    assign left[15:0] = t_left[15:0];
//    assign right[15:0] = s_right[15:0];

//endmodule


`timescale 1ns / 1ps
`include "Adder.v"
`include "XORall.v"

module SPECK(    
    input [31:0] in,   
//    input [15:0] k,  
    output [15:0] left,
    output [15:0] right,
    output [15:0] debug_key // Debug output for the key
);

    // Internal variables
    wire [15:0] left_part, right_part,k;
    wire [15:0] r_left, t_left, r_right, s_right, s_left;

//    assign k = key[15:0];  
    assign k = 16'hFAF5;                 
    assign left_part[15:0] = in[31:16];
    assign right_part[15:0]  = in[15:0];

    assign r_right = {right_part[13:0], right_part[15:14]}; 
    assign r_left = {left_part[6:0], left_part[15:7]};  

    // SPECK encryption steps
    Adder add1(.A(r_left), .B(right_part), .MIG_out(s_left));
    XORall xor1(.in0(s_left), .in1(k), .mMIG_op(t_left)); 
    XORall xor2(.in0(t_left), .in1(r_right), .mMIG_op(s_right));

    // Assign outputs
    assign left[15:0] = t_left[15:0];
    assign right[15:0] = s_right[15:0];
    assign debug_key[15:0] = k[15:0]; //for debug

endmodule

