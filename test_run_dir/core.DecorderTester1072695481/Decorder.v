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
  output [1:0] io_PC_MUX_sel
);
  wire  _T_24;
  wire  _T_26;
  wire  _T_27;
  wire  _T_28;
  wire  _T_29;
  wire  rs2;
  wire  _T_32;
  wire  _T_33;
  wire  _T_35;
  wire  _T_36;
  wire  _T_39;
  wire  _T_40;
  wire  _T_42;
  wire  _T_43;
  wire  _T_45;
  wire  i;
  wire  _T_58;
  wire  pcb;
  wire  u;
  wire  _T_94;
  wire  mem;
  wire  pcwb;
  wire  _T_107;
  wire  _T_111;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire [1:0] _GEN_7;
  wire [1:0] _GEN_8;
  wire  pc4;
  wire  _T_187;
  wire  _T_192;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_45;
  assign io_JBType_sel = _T_111;
  assign io_PC_MUX_sel = _GEN_15;
  assign _T_24 = io_IR[6];
  assign _T_26 = _T_24 == 1'h0;
  assign _T_27 = io_IR[5];
  assign _T_28 = _T_26 & _T_27;
  assign _T_29 = io_IR[4];
  assign rs2 = _T_28 & _T_29;
  assign _T_32 = _T_27 == 1'h0;
  assign _T_33 = io_IR[2];
  assign _T_35 = _T_33 == 1'h0;
  assign _T_36 = _T_32 & _T_35;
  assign _T_39 = _T_29 == 1'h0;
  assign _T_40 = io_IR[3];
  assign _T_42 = _T_40 == 1'h0;
  assign _T_43 = _T_39 & _T_42;
  assign _T_45 = _T_43 & _T_33;
  assign i = _T_36 | _T_45;
  assign _T_58 = _T_32 & _T_42;
  assign pcb = _T_58 & _T_33;
  assign u = _T_29 & _T_33;
  assign _T_94 = _T_32 & _T_39;
  assign mem = _T_94 & _T_42;
  assign pcwb = _T_27 & _T_40;
  assign _T_107 = _T_24 & _T_39;
  assign _T_111 = _T_107 & _T_35;
  assign _GEN_1 = i ? 2'h2 : 2'h3;
  assign _GEN_2 = rs2 ? 2'h1 : _GEN_1;
  assign _GEN_3 = pcb ? 2'h0 : _GEN_2;
  assign _GEN_7 = mem ? 2'h0 : 2'h1;
  assign _GEN_8 = pcwb ? 2'h2 : _GEN_7;
  assign pc4 = _T_26 | _T_29;
  assign _T_187 = io_DataMem_rdy == 1'h0;
  assign _T_192 = pc4 & _T_187;
  assign _GEN_14 = _T_192 ? 2'h0 : 2'h2;
  assign _GEN_15 = io_DataMem_rdy ? 2'h1 : _GEN_14;
endmodule
