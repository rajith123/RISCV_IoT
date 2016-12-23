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
  wire  _T_12;
  wire  _T_13;
  wire  _T_14;
  wire [31:0] _T_15;
  wire [31:0] _T_16;
  wire [31:0] _T_17;
  assign io_to_alu_a = _T_17;
  assign _T_12 = io_rs1_mux_sel == 2'h0;
  assign _T_13 = io_rs1_mux_sel == 2'h1;
  assign _T_14 = io_rs1_mux_sel == 2'h2;
  assign _T_15 = _T_14 ? io_imm_z : io_rs1;
  assign _T_16 = _T_13 ? io_imm_u : _T_15;
  assign _T_17 = _T_12 ? io_rs1 : _T_16;
endmodule
