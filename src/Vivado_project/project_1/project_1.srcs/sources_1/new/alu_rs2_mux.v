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
  wire  _T_14;
  wire  _T_15;
  wire  _T_16;
  wire [31:0] _T_19;
  wire [31:0] _T_20;
  wire [31:0] _T_21;
  assign io_to_alu_b = _T_21;
  assign _T_14 = io_rs2_mux_sel == 2'h0;
  assign _T_15 = io_rs2_mux_sel == 2'h1;
  assign _T_16 = io_rs2_mux_sel == 2'h2;
  assign _T_19 = _T_16 ? io_imm_i : io_rs2;
  assign _T_20 = _T_15 ? io_imm_s : _T_19;
  assign _T_21 = _T_14 ? io_pc : _T_20;
endmodule
