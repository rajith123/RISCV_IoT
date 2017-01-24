`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:54 01/16/2017
// Design Name:   core
// Module Name:   D:/RISC/tb_core.v
// Project Name:  RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_core;

	// Inputs
	reg [31:0] io_IR;
	reg [31:0] from_data_mem;
	reg        data_valid;
	reg        data_ready;
	reg clk;
	reg reset;
	
	
	
	reg [24:0] temp1;
	reg [24:0] temp2;
	reg [21:0] temp3;
	reg [24:0] temp4;
	reg [21:0] temp5;
	reg [21:0] temp6;
	reg [21:0] temp7;
	reg [21:0] temp8;
	reg [14:0] temp9;
	
	reg [4:0]	opcode;


	// Outputs
	wire [31:0] to_data_mem_reg;
	wire [31:0] ins_mem_addr;
	wire [31:0] data_mem_addr_reg;
	wire mem_rd_reg;
	wire mem_wr_reg;
	
	wire [4:0]rd;
	
	assign rd = io_IR[11:7];

	// Instantiate the Unit Under Test (UUT)
	core uut (
		.from_ins_mem(io_IR), 
		.from_data_mem(from_data_mem), 
		.to_data_mem_reg(to_data_mem_reg), 
		.data_valid(data_valid), 
		.data_ready(data_ready), 
		.ins_mem_addr(ins_mem_addr), 
		.data_mem_addr_reg(data_mem_addr_reg), 
		.clk(clk), 
		.reset(reset), 
		.mem_rd_reg(mem_rd_reg), 
		.mem_wr_reg(mem_wr_reg)
	);
	always begin
		
		clk = ~clk;
		#50;
	
	end
	initial begin
		// Initialize Inputs
		io_IR = 0;
		from_data_mem = 0;
		data_valid = 1;
		data_ready = 1;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;
		#100;
		reset = 0;
		// Add stimulus here
		temp1 = $random; 
		io_IR = {temp1,7'b0110111};  //LUI 
		opcode = io_IR[6:2];
		
		#100;
		

		temp2 = $random; 
		io_IR = {temp2,7'b0010111};  //AUIPC
		opcode = io_IR[6:2];
		#100;

/*		temp3 = $random;
		io_IR = {temp3[21:5],3'b000,temp3[4:0],7'b1100111};  //JALR
		opcode = io_IR[6:2]; 
		#100;

		temp4 = $random;
		io_IR = {temp4,7'b1101111};  //JAL  
		opcode = io_IR[6:2];
		#100;

		temp5 = $random;
		io_IR = {temp5[21:5],3'b000,temp5[4:0],7'b1100011};  //BEQ  
		opcode = io_IR[6:2];
		#100;

		temp6 = $random;
		io_IR = {temp6[21:5],3'b000,temp6[4:0],7'b0000011};  //LB   
		opcode = io_IR[6:2];
		from_data_mem = $random;
		#100;

		temp7 = $random;
		io_IR = {temp7[21:5],3'b000,temp7[4:0],7'b0100011};  //SB  
		opcode = io_IR[6:2];
		#100;

		temp8 = $random; 
		io_IR = {temp8[21:5],3'b000,temp8[4:0],7'b0010011};  //ADDI 
		opcode = io_IR[6:2];
		#100;

		temp9 = $random;
		io_IR = {7'b0000000,temp9[14:5],3'b000,temp9[4:0],7'b0110011};  //ADD  
		opcode = io_IR[6:2];
		#100;*/
	end
      
endmodule

