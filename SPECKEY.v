
module SPECKEY(
input [31:0] in,
output [15:0] left,
output [15:0] right,
output [31:0] debug_key // Debug output for the key

    );
  wire[31:0] key, processed_in;
  wire [15:0] left, right,ini_left, ini_right;
  wire [15:0] t_left, t_left2, t_right, t_right2;
  assign key = 32'h1234;
  XORall xor1(.in0(in), .in1(key), .AOIG_op(processed_in));
  assign ini_left[15:0] = processed_in[31:16];
  assign ini_right[15:0] = processed_in[15:0];
  
  assign t_left[15:0] = {ini_left[6:0],ini_left[15:7]}; 
  assign t_right[15:0] = {ini_right[13:0], ini_right[15:14]};
  
  Adder add16_1(.A(t_left), .B(ini_right), .AOIG_out(t_left2));  
  XORall xor2(.in0(t_left2), .in1(t_right), .AOIG_op(t_right2));
       
  assign left[15:0] = t_left2[15:0];  
  assign right[15:0] = t_right2[15:0];  
  assign debug_key[31:0] = key[31:0]; //for debug

    
endmodule