`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:08 02/08/2017 
// Design Name: 
// Module Name:    Top_RISC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top_RISC(
		input 			clk,
		input 			rst,
		input [31:0]	InsR
    );
	 
	 wire 				mem_wr_valid;
	 wire 	[ 2:0]   mem_func3;
	 wire					mem_rd;
	 wire					data_ready;
	 wire		[31:0]	to_data_mem;
	 wire		[31:0]	data_mem_addr;
	 wire		[31:0]	from_data_mem;
	
	core coreRISCV (
		.from_ins_mem(InsR), 
		.from_data_mem(from_data_mem), 
		.to_data_mem_reg(to_data_mem), 
//		.data_valid(data_valid), 
		.data_ready(data_ready), 
		.ins_mem_addr(ins_mem_addr), 
		.data_mem_addr_reg(data_mem_addr), 
		.clk(clk), 
		.reset(rst), 
		.mem_rd_reg(mem_rd), 
		.mem_wr_valid_reg(mem_wr_valid),
		.mem_func3_reg(mem_func3)
	);
	
	
	OnChipMemory Memory(
		.clock(clk),
		.reset(rst),
		
		.io_port_0_req_ready(),
		.io_port_0_req_valid(),
		.io_port_0_req_bits_addr(),
		.io_port_0_req_bits_data(),
		.io_port_0_req_bits_fcn(),
		.io_port_0_req_bits_typ(),
		.io_port_0_resp_valid(),
		.io_port_0_resp_bits_data(),
		
		.io_port_1_req_ready(),
		.io_port_1_req_valid(mem_wr_valid),
		.io_port_1_req_bits_addr(data_mem_addr),
		.io_port_1_req_bits_data(to_data_mem),
		.io_port_1_req_bits_fcn(!mem_rd),
		.io_port_1_req_bits_typ(mem_func3),
		.io_port_1_resp_valid(data_ready),
		.io_port_1_resp_bits_data(from_data_mem)
	);
	
	

endmodule
