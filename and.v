`timescale 1ns / 1ps

module AND(
  input wire a,
  input wire b,
  output wire result
    );
    assign result = a & b;
endmodule