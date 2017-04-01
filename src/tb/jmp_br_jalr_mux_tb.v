`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:53:54 AM
// Design Name: 
// Module Name: jmp_br_jalr_mux_tb
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


module jmp_br_jalr_mux_tb();

  reg           clk;
  reg           rst;
  reg   [31:0]  br_jmp;
  reg   [31:0]  jalr;
  reg           sel;
  wire  [31:0]  to_pc_mux;
 
jmp_br_jalr_mux jmp_br_jalr_mux_tb (
  .clock(clk),
  .reset(rst),
  .io_br_jmp(br_jmp),
  .io_jalr(jalr),
  .io_jmp_br_jalr_mux_sel(sel),
  .io_to_pc_mux(to_pc_mux)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  br_jmp = $random;
  jalr = $random;
  sel = 0;
  #10 
  br_jmp = $random;
  jalr = $random;
  sel = 1;
  #10 
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
