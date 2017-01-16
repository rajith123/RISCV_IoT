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

module Decorder(
  input   clock,
  input   reset,
  input  [31:0] io_IR,
  input   io_br_eq,
  input   io_br_lt,
  input   io_br_ltu,
  input   io_DataMem_rdy,
  output  io_BUS_A_sel,
  output [1:0] io_BUS_B_sel,
  output [1:0] io_WB_sel,
  output  io_BRJMP_sel,
  output  io_JBType_sel,
  output [1:0] io_PC_MUX_sel,
  output  io_WEN_RegFile
);
  wire  _T_26;
  wire  _T_28;
  wire  _T_29;
  wire  _T_30;
  wire  _T_31;
  wire  rs2;
  wire  _T_34;
  wire  _T_35;
  wire  _T_37;
  wire  _T_38;
  wire  _T_41;
  wire  _T_42;
  wire  _T_44;
  wire  _T_45;
  wire  _T_47;
  wire  i;
  wire  _T_60;
  wire  pcb;
  wire  u;
  wire  _T_96;
  wire  mem;
  wire  pcwb;
  wire  _T_109;
  wire  _T_113;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire [1:0] _GEN_7;
  wire [1:0] _GEN_8;
  wire  pc4;
  wire  _T_189;
  wire  _T_194;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  wire  _T_207;
  wire  _T_210;
  wire  _T_211;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_47;
  assign io_JBType_sel = _T_113;
  assign io_PC_MUX_sel = _GEN_15;
  assign io_WEN_RegFile = _T_211;
  assign _T_26 = io_IR[6];
  assign _T_28 = _T_26 == 1'h0;
  assign _T_29 = io_IR[5];
  assign _T_30 = _T_28 & _T_29;
  assign _T_31 = io_IR[4];
  assign rs2 = _T_30 & _T_31;
  assign _T_34 = _T_29 == 1'h0;
  assign _T_35 = io_IR[2];
  assign _T_37 = _T_35 == 1'h0;
  assign _T_38 = _T_34 & _T_37;
  assign _T_41 = _T_31 == 1'h0;
  assign _T_42 = io_IR[3];
  assign _T_44 = _T_42 == 1'h0;
  assign _T_45 = _T_41 & _T_44;
  assign _T_47 = _T_45 & _T_35;
  assign i = _T_38 | _T_47;
  assign _T_60 = _T_34 & _T_44;
  assign pcb = _T_60 & _T_35;
  assign u = _T_31 & _T_35;
  assign _T_96 = _T_34 & _T_41;
  assign mem = _T_96 & _T_44;
  assign pcwb = _T_29 & _T_42;
  assign _T_109 = _T_26 & _T_41;
  assign _T_113 = _T_109 & _T_37;
  assign _GEN_1 = i ? 2'h2 : 2'h3;
  assign _GEN_2 = rs2 ? 2'h1 : _GEN_1;
  assign _GEN_3 = pcb ? 2'h0 : _GEN_2;
  assign _GEN_7 = mem ? 2'h0 : 2'h1;
  assign _GEN_8 = pcwb ? 2'h2 : _GEN_7;
  assign pc4 = _T_28 | _T_31;
  assign _T_189 = io_DataMem_rdy == 1'h0;
  assign _T_194 = pc4 & _T_189;
  assign _GEN_14 = _T_194 ? 2'h0 : 2'h2;
  assign _GEN_15 = io_DataMem_rdy ? 2'h1 : _GEN_14;
  assign _T_207 = _T_31 | _T_60;
  assign _T_210 = _T_29 & _T_35;
  assign _T_211 = _T_207 | _T_210;
endmodule
