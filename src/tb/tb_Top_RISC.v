`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:04 02/08/2017
// Design Name:   Top_RISC
// Module Name:   D:/RISC/tb_Top_RISC.v
// Project Name:  RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_RISC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Top_RISC;

	// Inputs
	reg 			clk;
	reg 			rst;
	reg [31:0]	InsR;
	reg [31:0]	io_IR;
	
	
	always begin
		
		clk = ~clk;
		#50;
	
	end
	
	always@(posedge clk) begin
		//#99;
		InsR <= io_IR;
	end

	// Instantiate the Unit Under Test (UUT)
	Top_RISC uut (
		.clk(clk), 
		.rst(rst), 
		.InsR(InsR)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		InsR = 0;
		io_IR = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#100;
        
		// Add stimulus here
		
		io_IR = 32'hfe010113; #100; //addi	sp,sp,-3
		io_IR = 32'h00812e23; #100; //sw	s0,28(sp)
		io_IR = 32'h02010413; #100; //addi	s0,sp,32
		io_IR = 32'h00500793; #100; //li	a5,5
		io_IR = 32'hfef42623; #100; //sw	a5,-20(s0)
		io_IR = 32'h00a00793; #100; //li	a5,10
		io_IR = 32'hfef42423; #100; //sw	a5,-24(s0)
		io_IR = 32'hfec42703; #100; //lw	a4,-20(s0)
		io_IR = 32'hfe842783; #100; //lw	a5,-24(s0)
		io_IR = 32'h00f707b3; #100; //add	a5,a4,a5
		io_IR = 32'hfef42223; #100; //sw	a5,-28(s0)

	end
      
endmodule

