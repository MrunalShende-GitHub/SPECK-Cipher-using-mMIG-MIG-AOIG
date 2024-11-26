//`timescale 1ps / 1ps

//module tb_SPECK;

//  reg [31:0] in_val;
//  reg [63:0] key;
//  wire [15:0] left_val;
//  wire [15:0] right_val; 
//   SPECK dut(.in(in_val), .key(key), .left(left_val), .right(right_val));
//  initial begin
//  in_val = 32'h1222354;
//  key = 64'hFD5A72DFFE76C869;
//  end

//endmodule





// WORKING FOR ALL 
`timescale 1ns / 1ps
module SPECK_tb;
  reg [31:0] in_val;
  wire [15:0] left_val;
  wire [15:0] right_val;
  integer i;
  integer delay_log;
  integer prev_delay_left=0;
  integer prev_delay_right=0;
//  wire [16:0] key = 16'hffff;  // Simplified key handling
  reg [15:0] prev_left, prev_right;
  reg [31:0] input_array [0:2475];
  wire [15:0] key_debug;  // Simplified key handling
 
  
//   SPECK dut(.in(in_val), .left(left_val), .right(right_val), .k(key));
   SPECK dut(.in(in_val), .left(left_val), .right(right_val),.debug_key(key_debug));

  initial begin
    delay_log = $fopen("/home/mrunal/Desktop/Verilog_Programs/SPECK/Results/delay_log_speck4.txt", "w");
    $fwrite(delay_log, " Input     left_delay    right_delay\n\n",);

    if (delay_log == 0) begin
        $display("Error opening log file!");
        $finish; 
    end
    $readmemh("/home/mrunal/Desktop/Verilog_Programs/SPECK/SPECK.sim/sim_1/behav/xsim/input_data.txt", input_array);
    prev_left = 16'h0000; 
    prev_right = 16'h0000;     

    for (i = 0; i < 2474; i = i + 1) begin 
      in_val = input_array[i]; 
      #10; 
//      $monitor("%t, %h, Left= %h, Right= %h",$realtime , in_val, left_val, right_val);
//      $monitor("%f, %h",$realtime , in_val);
//      if (left_val !== prev_left || right_val !== prev_right) begin
        if (left_val !== prev_left) begin
          $fwrite(delay_log, " %h:%fps,", in_val, $realtime-prev_delay_left);
          $monitor("%t, %h, Left= %h",$realtime , in_val, left_val);
          prev_left = left_val; 
          prev_delay_left = $realtime;
        end
        if (right_val !== prev_right) begin
          $fwrite(delay_log, " %fps,\n", $realtime-prev_delay_right);
          $monitor("%t, %h, Right= %h",$realtime , in_val, right_val);
          prev_right = right_val;
          prev_delay_right = $realtime;
        end
      end 
//    end
    $fclose(delay_log);
    $finish;
  end

endmodule
