`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:39:38 AM
// Design Name: 
// Module Name: pc_mux_tb
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


module pc_mux_tb();
  
  reg           clk;
  reg           rst;
  reg   [31:0]  pc_4;
  reg   [31:0]  pc;
  reg   [31:0]  jmp_br;
  reg   [1:0]   sel;
  wire  [31:0]  to_pc;
 
pc_mux pc_mux_tb (
  .clock(clk),
  .reset(rst),
  .io_pc_4(pc_4),
  .io_pc(pc),
  .io_jmp_br(jmp_br),
  .io_pc_sel(sel),
  .io_to_pc(to_pc)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  pc_4 = $random;
  pc = $random;
  jmp_br = $random;
  sel = 0;
  #10
  pc_4 = $random;
  pc = $random;
  jmp_br = $random;
  sel = 1;
  #10
  pc_4 = $random;
  pc = $random;
  jmp_br = $random;
  sel = 2;
  #10
  pc_4 = $random;
  pc = $random;
  jmp_br = $random;
  sel = 3;
  #10
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
