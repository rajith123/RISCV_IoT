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
  output  io_Mem_wr,
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
  wire  _T_198;
  wire  _T_199;
  wire [1:0] _GEN_14;
  wire  _T_203;
  wire [1:0] _GEN_15;
  wire  _T_213;
  wire  _T_220;
  wire  _T_224;
  wire  _T_228;
  wire  _T_229;
  wire  _T_232;
  wire  _T_236;
  wire  _T_240;
  wire  _T_241;
  wire  _T_272;
  wire  _T_273;
  wire  _T_275;
  wire  _T_276;
  wire  _T_277;
  wire  _T_278;
  wire  _T_279;
  wire  ALU_func4_bit;
  wire  _T_288;
  wire [3:0] _T_291;
  wire  _T_293;
  wire [3:0] _T_296;
  wire [3:0] _GEN_17;
  wire  _T_298;
  wire [3:0] _GEN_19;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_53;
  assign io_JBType_sel = _T_121;
  assign io_PC_MUX_sel = _GEN_15;
  assign io_WEN_RegFile = _T_241;
  assign io_Mem_rd = mem;
  assign io_Mem_wr = s;
  assign io_ALU_func = _GEN_19;
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
  assign _T_198 = io_DataMem_rdy == 1'h0;
  assign _T_199 = pc4 & _T_198;
  assign _GEN_14 = _T_199 ? 2'h1 : 2'h2;
  assign _T_203 = pc4 & io_DataMem_rdy;
  assign _GEN_15 = _T_203 ? 2'h0 : _GEN_14;
  assign _T_213 = _T_97 & _T_50;
  assign _T_220 = _T_34 & _T_40;
  assign _T_224 = _T_220 & _T_50;
  assign _T_228 = _T_224 & _T_43;
  assign _T_229 = _T_213 | _T_228;
  assign _T_232 = _T_32 & _T_35;
  assign _T_236 = _T_232 & _T_47;
  assign _T_240 = _T_236 & _T_43;
  assign _T_241 = _T_229 | _T_240;
  assign _T_272 = rs2 & _T_43;
  assign _T_273 = io_IR[14];
  assign _T_275 = _T_273 == 1'h0;
  assign _T_276 = _T_272 & _T_275;
  assign _T_277 = io_IR[13];
  assign _T_278 = _T_276 & _T_277;
  assign _T_279 = io_IR[30];
  assign ALU_func4_bit = _T_278 | _T_279;
  assign _T_288 = _T_97 & _T_43;
  assign _T_291 = {1'h1,func3};
  assign _T_293 = ALU_func4_bit == 1'h0;
  assign _T_296 = {1'h0,func3};
  assign _GEN_17 = _T_293 ? _T_296 : _T_291;
  assign _T_298 = _T_288 == 1'h0;
  assign _GEN_19 = _T_298 ? 4'h0 : _GEN_17;
endmodule
