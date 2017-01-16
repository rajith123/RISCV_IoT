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
  output  io_WEN_RegFile,
  output  io_Mem_rd,
  output  io_Mem_wr
);
  wire  _T_30;
  wire  _T_32;
  wire  _T_33;
  wire  _T_34;
  wire  _T_35;
  wire  _T_38;
  wire  _T_39;
  wire  _T_41;
  wire  _T_42;
  wire  _T_45;
  wire  _T_46;
  wire  _T_48;
  wire  _T_49;
  wire  _T_51;
  wire  i;
  wire  s;
  wire  _T_66;
  wire  pcb;
  wire  u;
  wire  _T_102;
  wire  mem;
  wire  pcwb;
  wire  _T_115;
  wire  _T_119;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire [1:0] _GEN_7;
  wire [1:0] _GEN_8;
  wire  pc4;
  wire  _T_195;
  wire  _T_200;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  wire  _T_213;
  wire  _T_216;
  wire  _T_217;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_51;
  assign io_JBType_sel = _T_119;
  assign io_PC_MUX_sel = _GEN_15;
  assign io_WEN_RegFile = _T_217;
  assign io_Mem_rd = mem;
  assign io_Mem_wr = s;
  assign _T_30 = io_IR[6];
  assign _T_32 = _T_30 == 1'h0;
  assign _T_33 = io_IR[5];
  assign _T_34 = _T_32 & _T_33;
  assign _T_35 = io_IR[4];
  assign _T_38 = _T_33 == 1'h0;
  assign _T_39 = io_IR[2];
  assign _T_41 = _T_39 == 1'h0;
  assign _T_42 = _T_38 & _T_41;
  assign _T_45 = _T_35 == 1'h0;
  assign _T_46 = io_IR[3];
  assign _T_48 = _T_46 == 1'h0;
  assign _T_49 = _T_45 & _T_48;
  assign _T_51 = _T_49 & _T_39;
  assign i = _T_42 | _T_51;
  assign s = _T_34 & _T_45;
  assign _T_66 = _T_38 & _T_48;
  assign pcb = _T_66 & _T_39;
  assign u = _T_35 & _T_39;
  assign _T_102 = _T_38 & _T_45;
  assign mem = _T_102 & _T_48;
  assign pcwb = _T_33 & _T_46;
  assign _T_115 = _T_30 & _T_45;
  assign _T_119 = _T_115 & _T_41;
  assign _GEN_1 = i ? 2'h2 : 2'h3;
  assign _GEN_2 = s ? 2'h1 : _GEN_1;
  assign _GEN_3 = pcb ? 2'h0 : _GEN_2;
  assign _GEN_7 = mem ? 2'h0 : 2'h1;
  assign _GEN_8 = pcwb ? 2'h2 : _GEN_7;
  assign pc4 = _T_32 | _T_35;
  assign _T_195 = io_DataMem_rdy == 1'h0;
  assign _T_200 = pc4 & _T_195;
  assign _GEN_14 = _T_200 ? 2'h0 : 2'h2;
  assign _GEN_15 = io_DataMem_rdy ? 2'h1 : _GEN_14;
  assign _T_213 = _T_35 | _T_66;
  assign _T_216 = _T_33 & _T_39;
  assign _T_217 = _T_213 | _T_216;
endmodule
