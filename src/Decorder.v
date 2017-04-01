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
  output  io_Mem_wr_valid,
  output [3:0] io_ALU_func
);
  wire  _T_32;
  wire  _T_34;
  wire  _T_35;
  wire  _T_36;
  wire  _T_37;
  wire  rs2;
  wire  _T_40;
  wire  _T_41;
  wire  _T_43;
  wire  _T_44;
  wire  _T_47;
  wire  _T_48;
  wire  _T_50;
  wire  _T_51;
  wire  _T_53;
  wire  i;
  wire  s;
  wire  _T_68;
  wire  pcb;
  wire  u;
  wire  _T_97;
  wire  _T_104;
  wire  mem;
  wire  pcwb;
  wire  _T_117;
  wire  _T_121;
  wire [2:0] func3;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire [1:0] _GEN_7;
  wire [1:0] _GEN_8;
  wire  pc4;
  wire  _T_201;
  wire  _T_203;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  wire [1:0] _GEN_16;
  wire  _T_209;
  wire [1:0] _GEN_17;
  wire [1:0] _GEN_18;
  wire  _T_219;
  wire  _T_226;
  wire  _T_230;
  wire  _T_234;
  wire  _T_235;
  wire  _T_238;
  wire  _T_242;
  wire  _T_246;
  wire  _T_247;
  wire  _T_278;
  wire  _T_279;
  wire  _T_281;
  wire  _T_282;
  wire  _T_283;
  wire  _T_284;
  wire  _T_285;
  wire  ALU_func4_bit;
  wire  _T_294;
  wire [3:0] _T_297;
  wire  _T_299;
  wire [3:0] _T_302;
  wire [3:0] _GEN_20;
  wire  _T_304;
  wire [3:0] _GEN_22;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_53;
  assign io_JBType_sel = _T_121;
  assign io_PC_MUX_sel = _GEN_18;
  assign io_WEN_RegFile = _T_247;
  assign io_Mem_rd = mem;
  assign io_Mem_wr_valid = s;
  assign io_ALU_func = _GEN_22;
  assign _T_32 = io_IR[6];
  assign _T_34 = _T_32 == 1'h0;
  assign _T_35 = io_IR[5];
  assign _T_36 = _T_34 & _T_35;
  assign _T_37 = io_IR[4];
  assign rs2 = _T_36 & _T_37;
  assign _T_40 = _T_35 == 1'h0;
  assign _T_41 = io_IR[2];
  assign _T_43 = _T_41 == 1'h0;
  assign _T_44 = _T_40 & _T_43;
  assign _T_47 = _T_37 == 1'h0;
  assign _T_48 = io_IR[3];
  assign _T_50 = _T_48 == 1'h0;
  assign _T_51 = _T_47 & _T_50;
  assign _T_53 = _T_51 & _T_41;
  assign i = _T_44 | _T_53;
  assign s = _T_36 & _T_47;
  assign _T_68 = _T_40 & _T_50;
  assign pcb = _T_68 & _T_41;
  assign u = _T_37 & _T_41;
  assign _T_97 = _T_34 & _T_37;
  assign _T_104 = _T_40 & _T_47;
  assign mem = _T_104 & _T_50;
  assign pcwb = _T_35 & _T_48;
  assign _T_117 = _T_32 & _T_47;
  assign _T_121 = _T_117 & _T_43;
  assign func3 = io_IR[14:12];
  assign _GEN_1 = i ? 2'h2 : 2'h3;
  assign _GEN_2 = s ? 2'h1 : _GEN_1;
  assign _GEN_3 = pcb ? 2'h0 : _GEN_2;
  assign _GEN_7 = mem ? 2'h0 : 2'h1;
  assign _GEN_8 = pcwb ? 2'h2 : _GEN_7;
  assign pc4 = _T_34 | _T_37;
  assign _T_201 = io_Mem_rd | io_Mem_wr_valid;
  assign _T_203 = io_DataMem_rdy == 1'h0;
  assign _GEN_14 = _T_203 ? 2'h1 : 2'h2;
  assign _GEN_15 = io_DataMem_rdy ? 2'h0 : _GEN_14;
  assign _GEN_16 = _T_201 ? _GEN_15 : 2'h2;
  assign _T_209 = _T_201 == 1'h0;
  assign _GEN_17 = _T_209 ? 2'h0 : _GEN_16;
  assign _GEN_18 = pc4 ? _GEN_17 : 2'h2;
  assign _T_219 = _T_97 & _T_50;
  assign _T_226 = _T_34 & _T_40;
  assign _T_230 = _T_226 & _T_50;
  assign _T_234 = _T_230 & _T_43;
  assign _T_235 = _T_219 | _T_234;
  assign _T_238 = _T_32 & _T_35;
  assign _T_242 = _T_238 & _T_47;
  assign _T_246 = _T_242 & _T_43;
  assign _T_247 = _T_235 | _T_246;
  assign _T_278 = rs2 & _T_43;
  assign _T_279 = io_IR[14];
  assign _T_281 = _T_279 == 1'h0;
  assign _T_282 = _T_278 & _T_281;
  assign _T_283 = io_IR[13];
  assign _T_284 = _T_282 & _T_283;
  assign _T_285 = io_IR[30];
  assign ALU_func4_bit = _T_284 | _T_285;
  assign _T_294 = _T_97 & _T_43;
  assign _T_297 = {1'h1,func3};
  assign _T_299 = ALU_func4_bit == 1'h0;
  assign _T_302 = {1'h0,func3};
  assign _GEN_20 = _T_299 ? _T_302 : _T_297;
  assign _T_304 = _T_294 == 1'h0;
  assign _GEN_22 = _T_304 ? 4'h0 : _GEN_20;
endmodule