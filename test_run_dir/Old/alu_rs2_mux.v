`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module alu_rs2_mux(
  input   clock,
  input   reset,
  input  [31:0] io_pc,
  input  [31:0] io_imm_s,
  input  [31:0] io_imm_i,
  input  [31:0] io_rs2,
  input  [1:0] io_rs2_mux_sel,
  output [31:0] io_to_alu_b
);
  wire  T_14;
  wire  T_15;
  wire  T_16;
  wire [31:0] T_19;
  wire [31:0] T_20;
  wire [31:0] T_21;
  assign io_to_alu_b = T_21;
  assign T_14 = io_rs2_mux_sel == 2'h0;
  assign T_15 = io_rs2_mux_sel == 2'h1;
  assign T_16 = io_rs2_mux_sel == 2'h2;
  assign T_19 = T_16 ? io_imm_i : io_rs2;
  assign T_20 = T_15 ? io_imm_s : T_19;
  assign T_21 = T_14 ? io_pc : T_20;
endmodule
