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
  output  io_WEN_RegFile,
  output  io_Mem_rd,
  output  io_Mem_wr_valid,
  output [3:0] io_ALU_func,
  output  io_IR_skip_Mux_sel
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
  wire  _T_153;
  wire  _T_156;
  wire  _T_157;
  wire  _T_159;
  wire  _T_160;
  wire  _T_161;
  wire  _T_162;
  wire  _T_165;
  wire  _T_166;
  wire  _T_167;
  wire  _T_169;
  wire  _T_170;
  wire  _T_171;
  wire  _T_172;
  wire  _T_175;
  wire  _T_176;
  wire  _T_179;
  wire  _T_180;
  wire  branch;
  wire  _T_199;
  wire  _T_206;
  wire  _T_210;
  wire  _T_214;
  wire  _T_215;
  wire  _T_218;
  wire  _T_222;
  wire  _T_226;
  wire  _T_227;
  wire  _T_258;
  wire  _T_259;
  wire  _T_261;
  wire  _T_262;
  wire  _T_263;
  wire  _T_264;
  wire  _T_265;
  wire  ALU_func4_bit;
  wire  _T_274;
  wire [3:0] _T_277;
  wire  _T_279;
  wire [3:0] _T_282;
  wire [3:0] _GEN_14;
  wire  _T_284;
  wire [3:0] _GEN_16;
  wire  _T_286;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_53;
  assign io_JBType_sel = _T_121;
  assign io_WEN_RegFile = _T_227;
  assign io_Mem_rd = mem;
  assign io_Mem_wr_valid = s;
  assign io_ALU_func = _GEN_16;
  assign io_IR_skip_Mux_sel = _T_286;
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
  assign _T_153 = func3 == 3'h0;
  assign _T_156 = _T_153 & io_br_eq;
  assign _T_157 = func3 == 3'h1;
  assign _T_159 = io_br_eq == 1'h0;
  assign _T_160 = _T_157 & _T_159;
  assign _T_161 = _T_156 | _T_160;
  assign _T_162 = func3 == 3'h4;
  assign _T_165 = _T_162 & io_br_lt;
  assign _T_166 = _T_161 | _T_165;
  assign _T_167 = func3 == 3'h5;
  assign _T_169 = io_br_lt == 1'h0;
  assign _T_170 = _T_167 & _T_169;
  assign _T_171 = _T_166 | _T_170;
  assign _T_172 = func3 == 3'h6;
  assign _T_175 = _T_172 & io_br_ltu;
  assign _T_176 = _T_171 | _T_175;
  assign _T_179 = io_br_ltu == 1'h0;
  assign _T_180 = _T_167 & _T_179;
  assign branch = _T_176 | _T_180;
  assign _T_199 = _T_97 & _T_50;
  assign _T_206 = _T_34 & _T_40;
  assign _T_210 = _T_206 & _T_50;
  assign _T_214 = _T_210 & _T_43;
  assign _T_215 = _T_199 | _T_214;
  assign _T_218 = _T_32 & _T_35;
  assign _T_222 = _T_218 & _T_47;
  assign _T_226 = _T_222 & _T_43;
  assign _T_227 = _T_215 | _T_226;
  assign _T_258 = rs2 & _T_43;
  assign _T_259 = io_IR[14];
  assign _T_261 = _T_259 == 1'h0;
  assign _T_262 = _T_258 & _T_261;
  assign _T_263 = io_IR[13];
  assign _T_264 = _T_262 & _T_263;
  assign _T_265 = io_IR[30];
  assign ALU_func4_bit = _T_264 | _T_265;
  assign _T_274 = _T_97 & _T_43;
  assign _T_277 = {1'h1,func3};
  assign _T_279 = ALU_func4_bit == 1'h0;
  assign _T_282 = {1'h0,func3};
  assign _GEN_14 = _T_279 ? _T_282 : _T_277;
  assign _T_284 = _T_274 == 1'h0;
  assign _GEN_16 = _T_284 ? 4'h0 : _GEN_14;
  assign _T_286 = _T_121 & branch;
endmodule
