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
	
	
	
	reg [19:0] temp1;
	reg [24:0] temp2;
	reg [21:0] temp3;
	reg [24:0] temp4;
	reg [21:0] temp5;
	reg [21:0] temp6;
	reg [21:0] temp7;
	reg [21:0] temp8;
	reg [14:0] temp9;
	
	reg [4:0]	opcode;
	reg [31:0]	io_IR_reg;


	// Outputs
	wire [31:0] to_data_mem_reg;
	wire [31:0] ins_mem_addr;
	wire [31:0] data_mem_addr_reg;
	wire mem_rd_reg;
	wire mem_wr_reg;
	
	wire [4:0]rd;
	
	assign rd = io_IR[11:7];
	//reg data_ready_reg;
	
	//assign data_ready = data_ready_reg;
	
	//reg [31:0] memory [127:0];
	
	/*always@(posedge clk) begin
	
		if(mem_rd_reg) begin
			from_data_mem <= memory[data_mem_addr_reg];
			data_ready_reg <= 1;
		end else if(mem_wr_reg) begin
			memory[data_mem_addr_reg] <= to_data_mem_reg;
			data_ready_reg <= 1;
		end else begin
			data_ready_reg <= 0;
		end
	end*/
	

	// Instantiate the Unit Under Test (UUT)
	core uut (
		.from_ins_mem(io_IR_reg), 
		.from_data_mem(from_data_mem), 
		.to_data_mem_reg(to_data_mem_reg), 
//		.data_valid(data_valid), 
		.data_ready(data_ready), 
		.ins_mem_addr(ins_mem_addr), 
		.data_mem_addr_reg(data_mem_addr_reg), 
		.clk(clk), 
		.reset(reset), 
		.mem_rd_reg(mem_rd_reg), 
		.mem_wr_valid_reg(mem_wr_reg)
	);
	always begin
		
		clk = ~clk;
		#50;
	
	end
	
	always@(posedge clk) begin
	
		io_IR_reg<= io_IR;
	
	end
	
	initial begin
		// Initialize Inputs
		io_IR = 0;
		from_data_mem = 0;
		data_valid = 1;
		data_ready = 1;
		clk = 1;
		reset = 0;
		
		//#100;
      reset = 1;
		#100;
		reset = 0;

		// Wait 100 ns for global reset to finish
		
		
//		io_IR = 32'hfe010113; #100; //addi	sp,sp,-3
//		io_IR = 32'h00812e23; #100; //sw	s0,28(sp)
//		io_IR = 32'h02010413; #100; //addi	s0,sp,32
//		io_IR = 32'h00500793; #100; //li	a5,5
//		io_IR = 32'hfef42623; #100; //sw	a5,-20(s0)
//		io_IR = 32'h00a00793; #100; //li	a5,10
//		io_IR = 32'hfef42423; #100; //sw	a5,-24(s0)
		io_IR = 32'hfec42703;  data_ready = 0;#100; //lw	a4,-20(s0)
		#100; from_data_mem = 32'd10;	data_ready = 1;
		io_IR = 32'hfe842783;  data_ready = 0;#100; //lw	a5,-24(s0)
		#100; from_data_mem = 32'd5;	data_ready = 1;
		io_IR = 32'h00f707b3; #100; //add	a5,a4,a5
		from_data_mem = 32'd5;
		io_IR = 32'hfef42223; #100; //sw	a5,-28(s0)
//		io_IR = 32'h00000793; #100; //li	a5,0
//		io_IR = 32'h00078513; #100; //mv	a0,a5
//		io_IR = 32'h01c12403; from_data_mem = 0; #100; //lw	s0,28(sp)
//		io_IR = 32'h02010113; #100; //addi	sp,sp,32
//		io_IR = 32'h00008067; #100; //ret
		
		// Add stimulus here
		/*temp1 = $random; 
		io_IR = {temp1,5'd9,7'b0110111};  //LUI 
		opcode = io_IR[6:2];
		#100;
		
		temp2 = $random;
		io_IR = {temp2,5'd10,7'b0110111};  //LUI 
		opcode = io_IR[6:2];
		#100;*/
		

		/*temp2 = $random; 
		io_IR = {temp2,7'b0010111};  //AUIPC
		opcode = io_IR[6:2];
		#100;

		temp3 = $random;
		io_IR = {temp3[21:10],5'd9,3'b000,temp3[4:0],7'b1100111};  //JALR
		opcode = io_IR[6:2]; 
		#100;
		

		temp4 = $random;
		io_IR = {temp4,7'b1101111};  //JAL  
		opcode = io_IR[6:2];
		#100;

		temp5 = $random;
		io_IR = {temp5[6:0],5'd10,5'd9,3'b000,5'd11,7'b1100011};  //BEQ  
		opcode = io_IR[6:2];
		#100;

		temp6 = $random;
		io_IR = {temp6[21:5],3'b000,temp6[4:0],7'b0000011};  //LB   
		opcode = io_IR[6:2];
		from_data_mem = $random;
		#100;*/

		/*temp7 = $random;
		io_IR = {temp7[11:5],5'd9,5'd10,3'b000,temp7[4:0],7'b0100011};  //SB  
		opcode = io_IR[6:2];
		#100;

		temp8 = $random; 
		io_IR = {temp8[11:0],5'd9,3'b000,5'd11,7'b0010011};  //ADDI 
		opcode = io_IR[6:2];
		#100;*/

		/*temp9 = $random;
		io_IR = {7'b0100000,5'd9,5'd10,3'b000,5'd11,7'b0110011};  //ADD  
		opcode = io_IR[6:2];
		#100;*/
		
	end
      
endmodule

