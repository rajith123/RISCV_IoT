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
  wire  _T_12;
  wire [31:0] _T_16;
  wire [31:0] _T_17;
  wire  _T_18;
  wire  _T_20;
  wire  _T_21;
  wire  _GEN_2;
  wire  _T_25;
  wire  _T_29;
  wire  _T_30;
  wire  _T_31;
  wire  _GEN_5;
  wire  _GEN_6;
  assign io_br_eq = _GEN_5;
  assign io_br_lt = _GEN_6;
  assign io_br_ltu = _T_31;
  assign _T_12 = io_rs1 == io_rs2;
  assign _T_16 = $signed(io_rs1);
  assign _T_17 = $signed(io_rs2);
  assign _T_18 = $signed(_T_16) < $signed(_T_17);
  assign _T_20 = _T_12 == 1'h0;
  assign _T_21 = _T_20 & _T_18;
  assign _GEN_2 = _T_21 ? 1'h0 : 1'h1;
  assign _T_25 = io_rs1 < io_rs2;
  assign _T_29 = _T_18 == 1'h0;
  assign _T_30 = _T_20 & _T_29;
  assign _T_31 = _T_30 & _T_25;
  assign _GEN_5 = _T_31 ? 1'h0 : _GEN_2;
  assign _GEN_6 = _T_31 ? 1'h0 : _T_21;
endmodule
