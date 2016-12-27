`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:58:07 AM
// Design Name: 
// Module Name: bramch_check_tb
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


module branch_check_tb();
  
  reg           clk;
  reg           rst;
  reg   [31:0]  rs1;
  reg   [31:0]  rs2;
  wire          br_eq;
  wire          br_lt;
  wire          br_ltu;
   
  branch_check branch_check_tb (
    .clock(clk),
    .reset(rst),
    .io_rs1(rs1),
    .io_rs2(rs2),
    .io_br_eq(br_eq),
    .io_br_lt(br_lt),
    .io_br_ltu(br_ltu)
  );
   
  initial begin
    clk = 1'b0;
    rst = 1'b0;
    rs1 = $random;
    rs2 = $random;
    #10
    rs1 = $random;
    rs2 = rs1;
    #10
    rs1 = $random;
    rs2 = rs1-100;
    #10
    rs1 = $random;
    rs2 = rs1+100;
    #10
    rs1 = $random;
    rs2 = $random;
    #10
    rs1 = $random;
    rs2 = $random;
    #10
    rs1 = $random;
    rs2 = $random;
    #10
    $finish;
  end
  
  always begin
    clk = ~clk;
    #5;
  end
endmodule
