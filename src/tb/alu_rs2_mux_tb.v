`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:25:40 AM
// Design Name: 
// Module Name: alu_rs2_mux_tb
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


module alu_rs2_mux_tb();
  
    reg           clk;
    reg           rst;
    reg   [31:0]  pc;
    reg   [31:0]  imm_s;
    reg   [31:0]  imm_i;
    reg   [31:0]  rs2;
    reg   [1:0]   sel;
    wire  [31:0]  to_alu_b;
    
    alu_rs2_mux rs2_mux (
    .clock(clk),
    .reset(rst),
    .io_rs2(rs2),
    .io_imm_s(imm_s),
    .io_imm_i(imm_i),
    .io_pc(pc),
    .io_rs2_mux_sel(sel),
    .io_to_alu_b(to_alu_b)
    );
    
    initial begin
    clk = 1'b0;
    rst = 1'b0;
    pc = $random;
    imm_s = $random;
    imm_i = $random;
    rs2 = $random;
    sel = 0;
    #10
    pc = $random;
    imm_s = $random;
    imm_i = $random;
    rs2 = $random;
    sel = 1;
    #10
    pc = $random;
    imm_s = $random;
    imm_i = $random;
    rs2 = $random;
    sel = 2;
    #10
    pc = $random;
    imm_s = $random;
    imm_i = $random;
    rs2 = $random;
    sel = 3;
    #10
    $finish;
    end
    
    always begin
    clk = ~clk;
    #5;
    end
endmodule
