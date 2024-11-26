`timescale 1ns / 1ps
module min(
    input wire a,
    input wire b,
    input wire c,
    output wire result
);
    assign result = (~a & ~b) | (~b & ~c) | (~a & ~c);
endmodule