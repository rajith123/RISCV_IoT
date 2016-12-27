`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:13:00 AM
// Design Name: 
// Module Name: PC4_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC4_tb();
  reg           clk;
  reg           rst;
  reg   [31:0]  d_in;
  wire  [31:0]  d_out;
 
PC4 pc_4 (
  .clock(clk),
  .reset(rst),
  .io_PC4_in(d_in),
  .io_PC4_out(d_out)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  d_in = $random;
  #10
  d_in = $random;
  #10
  d_in = $random;
  #10
  d_in = $random;
  #10    
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
