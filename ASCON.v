`timescale 1ns / 1ps

module ASCON (
    input [4:0] in,   // 5-bit input to the S-box
    output [4:0] out
);

  wire [4:0] x,y;
  
    assign x = in;
    
	assign y[0] = (x[4] & x[3] & x[1]) | (!x[4] & x[3] & !x[1]) | (!x[3] & !x[1] & x[0]) | (!x[3] & x[1] & !x[0]);
	assign y[1] = (x[4] & x[3] & x[2]) | (x[4] & !x[3] & !x[2]) | (x[3] & x[2] & !x[1] & x[0]) | (!x[3] & !x[2] & !x[1] & x[0]) | (x[3] & x[2] & x[1] & !x[0]) | (!x[3] & !x[2] & x[1] & !x[0]) | (!x[4] & !x[3] & x[2] & x[1] & x[0]) | (!x[4] & x[3] & !x[2] & x[1] & x[0]) | (!x[4] & !x[3] & x[2] & !x[1] & !x[0]) | (!x[4] & x[3] & !x[2] & !x[1] & !x[0]);
	assign y[2] = (x[3] & x[2] & x[1]) | (!x[3] & !x[2] & x[1]) | (x[3] & x[2] & !x[0]) | (!x[3] & !x[2] & !x[0]) | (!x[3] & x[2] & !x[1] & x[0]) | (x[3] & !x[2] & !x[1] & x[0]);
	assign y[3] = (!x[4] & x[3] & x[2] & x[1] & x[0]) | (!x[4] & !x[3] & !x[2] & !x[1] & x[0]) | (x[4] & x[3] & x[2] & x[1] & !x[0]) | (x[4] & !x[3] & !x[2] & !x[1] & !x[0]) | (x[4] & !x[3] & x[2] & x[0]) | (x[4] & !x[2] & x[1] & x[0]) | (x[4] & x[3] & !x[1] & x[0]) | (!x[4] & !x[3] & x[2] & !x[0]) | (!x[4] & !x[2] & x[1] & !x[0]) | (!x[4] & x[3] & !x[1] & !x[0]);
	assign y[4] = (x[3] & x[1] & x[0]) | (x[3] & !x[1] & !x[0]) | (x[4] & !x[3] & x[2] & x[1]) | (!x[4] & !x[3] & !x[2] & x[1]) | (!x[4] & !x[3] & x[2] & !x[1]) | (x[4] & !x[3] & !x[2] & !x[1]);

    assign out = y;
////module ASCON_Sbox (
////    input  [4:0] in,   // 5-bit input to the S-box
////    output [4:0] out   // 5-bit output from the S-box
////);

//wire [4:0] sbox_out;

//assign sbox_out[0] = ~in[0] ^ (in[1] & in[2]) ^ (in[2] & in[3]) ^ in[4];
//assign sbox_out[1] = ~in[1] ^ (in[2] & in[3]) ^ (in[3] & in[4]) ^ in[0];
//assign sbox_out[2] = ~in[2] ^ (in[3] & in[4]) ^ (in[4] & in[0]) ^ in[1];
//assign sbox_out[3] = ~in[3] ^ (in[4] & in[0]) ^ (in[0] & in[1]) ^ in[2];
//assign sbox_out[4] = ~in[4] ^ (in[0] & in[1]) ^ (in[1] & in[2]) ^ in[3];

//assign out = sbox_out;



//    wire [4:0] t0, t1, t2, t3, t4;
//    wire [4:0] x1,x2,x3;
//    wire [4:0] x;
    
//    assign x[4:0] = in[4:0];
    
//    assign x1[0] = x[0]^ x[4];
//    assign x1[4] = x[4]^ x[3];
//    assign x1[2] = x[0]^ x[4];
    
//    assign t0[0] = x1[0];
//    assign t0[1] = x[1];
//    assign t0[2] = x1[2];
//    assign t0[3] = x[3];
//    assign t0[4] = x1[4];
    
//    assign t1[0] = ~t0[0];
//    assign t1[1] = ~t0[1];
//    assign t1[2] = ~t0[2];
//    assign t1[3] = ~t0[3];
//    assign t1[4] = ~t0[4];
    
//    assign t2[0] = t1[0] & x[1];
//    assign t2[1] = t1[1] & x1[2];
//    assign t2[2] = t1[2] & x[3];
//    assign t2[3] = t1[3] & x1[4];
//    assign t2[4] = t1[4] & x1[0];
    
//    assign x2[0] = x1[0] ^ t2[1];
//    assign x2[1] = x[1] ^ t2[2];
//    assign x2[2] = x1[2] ^ t2[3];
//    assign x2[3] = x[3] ^ t2[4];
//    assign x2[4] = x1[4] ^ t2[0];
    
//    assign x3[1] = x2[1]^x2[0]; 
//    assign x3[0] = x2[0]^x2[4]; 
//    assign x3[3] = x2[3]^x2[2]; 
//    assign x3[2] = ~x2[2]; 
    
////    assign out_x0 = x3[0];
////    assign out_x1 = x3[1];
////    assign out_x2 = x3[2];
////    assign out_x3 = x3[3];
////    assign out_x4 = x2[4];
    
//    assign out[4:0] = x3[4:0]; 

endmodule