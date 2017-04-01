`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:11 01/15/2017
// Design Name:   Decorder
// Module Name:   D:/RISC/tb_cpath_decode.v
// Project Name:  RISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decorder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_cpath_decode;

	// Inputs
	reg clock;
	reg reset;
	reg [31:0] io_IR;
	reg io_br_eq;
	reg io_br_lt;
	reg io_br_ltu;
	reg io_DataMem_rdy;
	
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
	wire io_BUS_A_sel;
	wire [1:0] io_BUS_B_sel;
	wire [1:0] io_WB_sel;
	wire io_BRJMP_sel;
	wire io_JBType_sel;
	wire [1:0] io_PC_MUX_sel;
	wire 		  io_WEN_RegFile;
	wire 		  io_Mem_rd;
	wire 		  io_Mem_wr;

	// Instantiate the Unit Under Test (UUT)
	Decorder uut (
		.clock(clock), 
		.reset(reset), 
		.io_IR(io_IR), 
		.io_br_eq(io_br_eq), 
		.io_br_lt(io_br_lt), 
		.io_br_ltu(io_br_ltu), 
		.io_DataMem_rdy(io_DataMem_rdy), 
		.io_BUS_A_sel(io_BUS_A_sel), 
		.io_BUS_B_sel(io_BUS_B_sel), 
		.io_WB_sel(io_WB_sel), 
		.io_BRJMP_sel(io_BRJMP_sel), 
		.io_JBType_sel(io_JBType_sel), 
		.io_PC_MUX_sel(io_PC_MUX_sel),
		.io_WEN_RegFile(io_WEN_RegFile),
		.io_Mem_rd(io_Mem_rd),
		.io_Mem_wr_valid(io_Mem_wr)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		io_IR = 0;
		io_br_eq = 0;
		io_br_lt = 0;
		io_br_ltu = 0;
		io_DataMem_rdy = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				
		
	
		//temp1 = 32'd0; 
		//io_IR = {temp1,7'b0110111};  //LUI
		io_IR = 32'd0;  //LUI
		
		opcode = io_IR[6:2];
		#100;
		
/*
		temp2 = $random; 
		io_IR = {temp2,7'b0010111};  //AUIPC
		opcode = io_IR[6:2];
		#100;

		temp3 = $random;
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
		io_DataMem_rdy = 1'b0;
		#50;
		io_DataMem_rdy = 1'b1;
		#100;

		temp7 = $random;
		io_IR = {temp7[21:5],3'b000,temp7[4:0],7'b0100011};  //SB  
		opcode = io_IR[6:2];
		io_DataMem_rdy = 1'b0;
		#50;
		io_DataMem_rdy = 1'b1;
		#100;

		temp8 = $random; 
		io_IR = {temp8[21:5],3'b000,temp8[4:0],7'b0010011};  //ADDI 
		opcode = io_IR[6:2];
		#100;

		temp9 = $random;
		io_IR = {7'b0000000,temp9[14:5],3'b000,temp9[4:0],7'b0110011};  //ADD  
		opcode = io_IR[6:2];
		#100;
*/
	end
      
endmodule

