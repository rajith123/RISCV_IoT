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
    input   [31:0] from_ins_mem,
    input   [31:0] from_data_mem,
    output  [31:0] to_data_mem,
    input   [31:0] data_valid,
    input   [31:0] data_ready,
    output  [31:0] ins_mem_addr,
    output  [31:0] data_mem_addr,
    input          clk,
    input          reset
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
    
    wire    [31:0]  to_reg;
    
    wire    [4:0]   wb_addr;
    
    //Pipelining registers
    reg     [31:0]  alu_out_reg;
    reg     [4:0]   wb_addr_reg;
        
    reg     [31:0]  pc_reg;
    
    reg     [1:0]   reg_write_sel;
    
    assign rs1_addr     = from_IR[19:15];
    assign rs2_addr     = from_IR[24:20];
    
    assign wb_addr      = from_IR[11:7];
    
    assign bypass_reg   = alu_out_reg;
    
    always @(posedge clk)begin
        alu_out_reg     <= alu_out;
        wb_addr_reg     <= wb_addr;
        
        pc_reg          <= from_pc;
        reg_write_sel   <= wb_sel;
    end
    
    ALU alu32(
        
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
    .cloc(clk),               
    .reset(reset),               
    .io_rs(rs1_out_data),               
    .io_bypass(bypass_reg),           
    .io_rs_bypass_mux_sel(rs1_bypass_mux_sel),
    .io_to_rs_mux(rs1_data)         
    );
    
    rs_bypass_mux rs2_bypass_mux(
    .cloc(clk),               
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
    .io_DataMem_rdy(),
    .io_BUS_A_sel(BUS_A_sel),  
    .io_BUS_B_sel(BUS_B_sel),  
    .io_WB_sel(wb_sel),     
    .io_BRJMP_sel(),  
    .io_JBType_sel(), 
    .io_PC_MUX_sel()  
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
    .io_wen()          
    );
    
    alu_rs1_mux rs1_mux(
    .clock(clk),            
    .reset(reset),          
    .io_rs1(rs1_data),        
    .io_imm_u(imm_u),      
    .io_imm_z,      //to be removed
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
    .io_pc_4(pc_reg),             
    .io_reg_write_mux_sel(reg_write_sel),
    .io_to_reg(to_reg)           
    );
endmodule
