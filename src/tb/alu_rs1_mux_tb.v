`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:16:52 AM
// Design Name: 
// Module Name: alu_rs1_mux_tb
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


module alu_rs1_mux_tb();

  reg           clk;
  reg           rst;
  reg   [31:0]  rs1;
  reg   [31:0]  imm_u;
  reg   [31:0]  imm_z;
  reg   [1:0]   sel;
  wire  [31:0]  to_alu_a;
 
alu_rs1_mux rs1_mux (
  .clock(clk),
  .reset(rst),
  .io_rs1(rs1),
  .io_imm_u(imm_u),
  .io_imm_z(imm_z),
  .io_rs1_mux_sel(sel),
  .io_to_alu_a(to_alu_a)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  rs1 = $random;
  imm_u = $random;
  imm_z = $random;
  sel = 0;
  #10    
  rs1 = $random;
  imm_u = $random;
  imm_z = $random;
  sel = 1;
  #10    
  rs1 = $random;
  imm_u = $random;
  imm_z = $random;
  sel = 2;
  #10    
  rs1 = $random;
  imm_u = $random;
  imm_z = $random;
  sel = 3;
  #10    
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
