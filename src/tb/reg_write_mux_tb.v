`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:34:55 AM
// Design Name: 
// Module Name: reg_write_mux_tb
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


module reg_write_mux_tb();

  reg           clk;
  reg           rst;
  reg   [31:0]  data_mem;
  reg   [31:0]  alu_out;
  reg   [31:0]  pc_4;
  reg   [1:0]   sel;
  wire  [31:0]  to_reg;
 
reg_write_mux reg_wr_mux (
  .clock(clk),
  .reset(rst),
  .io_data_mem(data_mem),
  .io_alu_out(alu_out),
  .io_pc_4(pc_4),
  .io_reg_write_mux_sel(sel),
  .io_to_reg(to_reg)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  data_mem = $random;
  alu_out = $random;
  pc_4 = $random;
  sel = 0;
  #10 
  data_mem = $random;
  alu_out = $random;
  pc_4 = $random;
  sel = 1;
  #10 
  data_mem = $random;
  alu_out = $random;
  pc_4 = $random;
  sel = 2;
  #10 
  data_mem = $random;
  alu_out = $random;
  pc_4 = $random;
  sel = 3;
  #10 
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
