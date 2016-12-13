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

module alu_rs1_mux(
  input   clock,
  input   reset,
  input  [31:0] io_rs1,
  input  [31:0] io_imm_u,
  input  [31:0] io_imm_z,
  input  [1:0] io_rs1_mux_sel,
  output [31:0] io_to_alu_a
);
  wire  T_12;
  wire  T_13;
  wire  T_14;
  wire [31:0] T_15;
  wire [31:0] T_16;
  wire [31:0] T_17;
  assign io_to_alu_a = T_17;
  assign T_12 = io_rs1_mux_sel == 2'h0;
  assign T_13 = io_rs1_mux_sel == 2'h1;
  assign T_14 = io_rs1_mux_sel == 2'h2;
  assign T_15 = T_14 ? io_imm_z : io_rs1;
  assign T_16 = T_13 ? io_imm_u : T_15;
  assign T_17 = T_12 ? io_rs1 : T_16;
endmodule
