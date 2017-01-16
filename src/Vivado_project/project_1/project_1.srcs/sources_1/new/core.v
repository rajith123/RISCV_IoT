`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2017 06:21:23 PM
// Design Name: 
// Module Name: core
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


module core(
    input   		[31:0] from_ins_mem,
    input   		[31:0] from_data_mem,
    output  reg 	[31:0] to_data_mem_reg,
    input   		       data_valid,
    input   		       data_ready,
    output  reg	[31:0] ins_mem_addr,
    output  reg	[31:0] data_mem_addr_reg,
    input          		 clk,
    input          		 reset,
	 output 	reg	 		 mem_rd_reg,
	 output	reg	 		 mem_wr_reg
    );
    
    wire    [31:0]  from_IR;
    
    wire    [31:0]  rs1_out_data;
    wire    [31:0]  rs2_out_data;
    
    wire    [4:0]  rs1_addr;
    wire    [4:0]  rs2_addr;
    
    wire    [31:0]  imm_i;
    wire    [31:0]  imm_s;
    wire    [31:0]  imm_b;
    wire    [31:0]  imm_u;
    wire    [31:0]  imm_j;
	 
    wire    [31:0]  br_jmp;
    wire    [31:0]  to_adder;
	 
    wire   			  BRJMP_sel;
	 
    wire   	[31:0]  to_pc_mux;
    
    wire    [31:0]  from_pc;
    
    wire    [31:0]  bypass_reg;
    wire    [31:0]  rs1_data;
    wire            rs1_bypass_mux_sel;
    
    wire    [31:0]  rs2_data;
    wire            rs2_bypass_mux_sel;
    
    wire            br_eq;
    wire            br_lt;
    wire            br_ltu;
    
    wire            BUS_A_sel;
    wire    [1:0]   BUS_B_sel;
    
    wire    [31:0]  alu_in_a;
    wire    [31:0]  alu_in_b;
    wire    [31:0]  alu_out;
	 
    wire    [31:0]  alu_adder;
    
    wire    [31:0]  to_reg;
    
    wire    [4:0]   wb_addr;
	 
    wire    [3:0]   alu_fn;
	 
    wire            JBType_sel;
	 
    wire    [31:0]  to_pc;
    wire    [31:0]  pc_out;
    wire    [31:0]  pc_4;
    wire    [1:0]   PC_MUX_sel;
	 
	 
	 
	 wire				 mem_rd;
	 wire				 mem_wr;
	 
	 	 
    wire	  [31:0] to_data_mem;
    wire	  [31:0] data_mem_addr;
	 
	 wire				regfile_wen;

    
    //Pipelining registers
    reg     [31:0]  alu_out_reg;
    reg     [4:0]   wb_addr_reg;
        
    reg     [31:0]  pc_reg;
    reg     [31:0]  pc_reg_2;
    
    reg     [1:0]   reg_write_sel;
	 
	 reg				  regfile_wen_reg;
	 
	 reg				  data_ready_reg;
    
    assign rs1_addr     = from_IR[19:15];
    assign rs2_addr     = from_IR[24:20];
    
    assign wb_addr      = from_IR[11:7];
    
    assign bypass_reg   = alu_out_reg;
	 
    assign br_jmp   = pc_reg + to_adder;
	 
    assign pc_4   = pc_out + 32'd4;
	 
    assign alu_fn   = {from_IR[0],from_IR[14:12]};//Remember to edit
	 
	 assign to_data_mem	= rs2_data;
	 assign data_mem_addr	= alu_out;
    
    always @(posedge clk)begin
		if(reset) begin
	        alu_out_reg     	<= 0;
			  wb_addr_reg     	<= 0;
			  
			  pc_reg          	<= 0;
			  pc_reg_2          	<= 0;
			  
			  reg_write_sel   	<= 0;
			  
			  mem_rd_reg 			<= 0;
			  mem_wr_reg 			<= 0;
			  
			  data_mem_addr_reg	<= 0;
			  to_data_mem_reg 	<= 0;
			  
			  regfile_wen_reg		<= 0;
			  
			  ins_mem_addr  		<= 0;
			  
			  data_ready_reg  	<= 0;
		end else begin
			  alu_out_reg     	<= alu_out;
			  wb_addr_reg     	<= wb_addr;
			  
			  pc_reg          	<= from_pc;
			  pc_reg_2          	<= pc_reg;
			  
			  reg_write_sel   	<= wb_sel;
			  
			  mem_rd_reg 			<= mem_rd;
			  mem_wr_reg 			<= mem_wr;
			  
			  data_mem_addr_reg	<= data_mem_addr;
			  to_data_mem_reg 	<= to_data_mem;
			  
			  regfile_wen_reg		<= regfile_wen;
			  ins_mem_addr 		<= to_pc;
			  
			  data_ready_reg 		<= data_ready;
		end 
    end
    
    ALU alu32(
    .clock(clk),
    .reset(reset),
    .io_fn(4'b0000),		//modification required
    .io_in2(alu_in_b),
    .io_in1(alu_in_a),
    .io_out(alu_out),
	 .io_adder_out(alu_adder)
	 );
    
    IR ins_reg(
    .clock(clk),         
    .reset(reset),         
    .io_IR_in(from_ins_mem),
    .io_IR_out(from_IR)
    );
    
    imm_ext imm_sext(
    .clock(clk),        
    .reset(reset),        
    .io_ir_in(from_IR),     
    .io_imm_i_sext(imm_i),
    .io_imm_s_sext(imm_s),
    .io_imm_b_sext(imm_b),
    .io_imm_u_sext(imm_u),
    .io_imm_j_sext(imm_j) 
    );
    
    rs_bypass_mux rs1_bypass_mux(
    .clock(clk),               
    .reset(reset),               
    .io_rs(rs1_out_data),               
    .io_bypass(bypass_reg),           
    .io_rs_bypass_mux_sel(rs1_bypass_mux_sel),
    .io_to_rs_mux(rs1_data)         
    );
    
    rs_bypass_mux rs2_bypass_mux(
    .clock(clk),               
    .reset(reset),               
    .io_rs(rs2_out_data),               
    .io_bypass(bypass_reg),           
    .io_rs_bypass_mux_sel(rs2_bypass_mux_sel),
    .io_to_rs_mux(rs2_data)         
    );
    
    Decorder cpath_decode(
    .clock(clk),         
    .reset(reset),         
    .io_IR(from_IR),         
    .io_br_eq(br_eq),      
    .io_br_lt(br_lt),      
    .io_br_ltu(br_ltu),     
    .io_DataMem_rdy(data_ready_reg),
    .io_BUS_A_sel(BUS_A_sel),  
    .io_BUS_B_sel(BUS_B_sel),  
    .io_WB_sel(wb_sel),     
    .io_BRJMP_sel(BRJMP_sel),  
    .io_JBType_sel(JBType_sel), 
    .io_PC_MUX_sel(PC_MUX_sel),
	 .io_WEN_RegFile(regfile_wen),
	 .io_Mem_rd(mem_rd),
	 .io_Mem_wr(mem_wr)
    );
    
    branch_check br_compare(
    .clock(clk),   
    .reset(reset),   
    .io_rs1(rs1_data),  
    .io_rs2(rs2_data),  
    .io_br_eq(br_eq),
    .io_br_lt(br_lt),
    .io_br_ltu(br_ltu)
    );
    
    RegFile reg_stack(
    .clock(clk),            
    .reset(reset),          
    .io_rs_in_adr(wb_addr_reg),   
    .io_rs1_out_addr(rs1_addr),
    .io_rs2_out_addr(rs2_addr),
    .io_rs1_out_data(rs1_out_data),
    .io_rs2_out_data(rs2_out_data),
    .io_rs_in_data(to_reg),  
    .io_wen(regfile_wen_reg)          
    );
    
    alu_rs1_mux rs1_mux(
    .clock(clk),            
    .reset(reset),          
    .io_rs1(rs1_data),        
    .io_imm_u(imm_u),
    .io_rs1_mux_sel(BUS_A_sel),
    .io_to_alu_a(alu_in_a)    
    );
    
     alu_rs2_mux rs2_mux(
     .clock(clk),           
     .reset(reset),         
     .io_pc(pc_reg),         
     .io_imm_s(imm_s),      
     .io_imm_i(imm_i),      
     .io_rs2(rs2_data),        
     .io_rs2_mux_sel(BUS_B_sel),
     .io_to_alu_b(alu_in_b)    
    );
    
    reg_write_mux reg_write(
    .clock(clk),                 
    .reset(reset),               
    .io_data_mem(from_data_mem),         
    .io_alu_out(alu_out_reg),          
    .io_pc_4(pc_reg_2),             
    .io_reg_write_mux_sel(reg_write_sel),
    .io_to_reg(to_reg)           
    );
	 
	 jmp_br_jalr_mux jmp_br_jalr_mux(
		.clock(clk),
		.reset(reset),
		.io_br_jmp(br_jmp),
		.io_jalr(alu_adder),
		.io_jmp_br_jalr_mux_sel(BRJMP_sel),
		.io_to_pc_mux(to_pc_mux)
	  );
	  
	  jmp_br_mux jb_mux(
	  .clock(clk),
	  .reset(reset),
	  .io_jmp(imm_j),
	  .io_br(imm_b),
	  .io_jmp_br_mux_sel(JBType_sel),
	  .io_to_adder(to_adder)
	  );
	  
	  pc_mux pc_mux(
	  .clock(clk),
	  .reset(reset),
	  .io_pc_4(pc_4),
	  .io_pc(pc_out),
	  .io_jmp_br(to_pc_mux),
	  .io_pc_sel(PC_MUX_sel),
	  .io_to_pc(to_pc)
	  );
	  
	  pc PC(
	  .clock(clk),
	  .reset(reset),
	  .io_pc_in(to_pc),
	  .io_pc_out(pc_out)
	  );
	  
endmodule
