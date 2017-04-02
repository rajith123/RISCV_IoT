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
  input         clock,
  input         reset,
  input  [31:0] io_rs1,
  input  [31:0] io_imm_u,
  input         io_rs1_mux_sel,
  output [31:0] io_to_alu_a
);
  wire  _T_10;
  wire [31:0] _T_12;
  wire [31:0] _T_13;
  assign io_to_alu_a = _T_13;
  assign _T_10 = io_rs1_mux_sel == 1'h0;
  assign _T_12 = io_rs1_mux_sel ? io_imm_u : io_rs1;
  assign _T_13 = _T_10 ? io_rs1 : _T_12;
endmodule
