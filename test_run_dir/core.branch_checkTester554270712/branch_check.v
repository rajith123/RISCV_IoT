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

module branch_check(
  input   clock,
  input   reset,
  input  [31:0] io_rs1,
  input  [31:0] io_rs2,
  output  io_br_eq,
  output  io_br_lt,
  output  io_br_ltu
);
  wire [31:0] _T_16;
  wire [31:0] _T_17;
  wire  _T_18;
  wire  _GEN_2;
  wire  _T_22;
  wire  _GEN_5;
  wire  _GEN_6;
  assign io_br_eq = _GEN_5;
  assign io_br_lt = _GEN_6;
  assign io_br_ltu = _T_22;
  assign _T_16 = $signed(io_rs1);
  assign _T_17 = $signed(io_rs2);
  assign _T_18 = $signed(_T_16) < $signed(_T_17);
  assign _GEN_2 = _T_18 ? 1'h0 : 1'h1;
  assign _T_22 = io_rs1 < io_rs2;
  assign _GEN_5 = _T_22 ? 1'h0 : _GEN_2;
  assign _GEN_6 = _T_22 ? 1'h0 : _T_18;
endmodule
