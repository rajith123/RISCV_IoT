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
  output [3:0] io_ALU_func,
  output  io_IR_skip_Mux_sel
);
  wire  _T_34;
  wire  _T_36;
  wire  _T_37;
  wire  _T_38;
  wire  _T_39;
  wire  rs2;
  wire  _T_42;
  wire  _T_43;
  wire  _T_45;
  wire  _T_46;
  wire  _T_49;
  wire  _T_50;
  wire  _T_52;
  wire  _T_53;
  wire  _T_55;
  wire  i;
  wire  s;
  wire  _T_70;
  wire  pcb;
  wire  u;
  wire  _T_99;
  wire  _T_106;
  wire  mem;
  wire  pcwb;
  wire  _T_119;
  wire  _T_123;
  wire [2:0] func3;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire [1:0] _GEN_7;
  wire [1:0] _GEN_8;
  wire  _T_155;
  wire  _T_158;
  wire  _T_159;
  wire  _T_161;
  wire  _T_162;
  wire  _T_163;
  wire  _T_164;
  wire  _T_167;
  wire  _T_168;
  wire  _T_169;
  wire  _T_171;
  wire  _T_172;
  wire  _T_173;
  wire  _T_174;
  wire  _T_177;
  wire  _T_178;
  wire  _T_181;
  wire  _T_182;
  wire  branch;
  wire  jmp_jalr;
  wire  _T_193;
  wire  _T_194;
  wire  _T_197;
  wire  _T_202;
  wire  _T_204;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  wire [1:0] _GEN_16;
  wire  _T_210;
  wire [1:0] _GEN_17;
  wire [1:0] _GEN_18;
  wire  _T_220;
  wire  _T_227;
  wire  _T_231;
  wire  _T_235;
  wire  _T_236;
  wire  _T_239;
  wire  _T_243;
  wire  _T_247;
  wire  _T_248;
  wire  _T_279;
  wire  _T_280;
  wire  _T_282;
  wire  _T_283;
  wire  _T_284;
  wire  _T_285;
  wire  _T_286;
  wire  ALU_func4_bit;
  wire  _T_295;
  wire [3:0] _T_298;
  wire  _T_300;
  wire [3:0] _T_303;
  wire [3:0] _GEN_20;
  wire  _T_305;
  wire [3:0] _GEN_22;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_55;
  assign io_JBType_sel = _T_123;
  assign io_PC_MUX_sel = _GEN_18;
  assign io_WEN_RegFile = _T_248;
  assign io_Mem_rd = mem;
  assign io_Mem_wr_valid = s;
  assign io_ALU_func = _GEN_22;
  assign io_IR_skip_Mux_sel = _T_193;
  assign _T_34 = io_IR[6];
  assign _T_36 = _T_34 == 1'h0;
  assign _T_37 = io_IR[5];
  assign _T_38 = _T_36 & _T_37;
  assign _T_39 = io_IR[4];
  assign rs2 = _T_38 & _T_39;
  assign _T_42 = _T_37 == 1'h0;
  assign _T_43 = io_IR[2];
  assign _T_45 = _T_43 == 1'h0;
  assign _T_46 = _T_42 & _T_45;
  assign _T_49 = _T_39 == 1'h0;
  assign _T_50 = io_IR[3];
  assign _T_52 = _T_50 == 1'h0;
  assign _T_53 = _T_49 & _T_52;
  assign _T_55 = _T_53 & _T_43;
  assign i = _T_46 | _T_55;
  assign s = _T_38 & _T_49;
  assign _T_70 = _T_42 & _T_52;
  assign pcb = _T_70 & _T_43;
  assign u = _T_39 & _T_43;
  assign _T_99 = _T_36 & _T_39;
  assign _T_106 = _T_42 & _T_49;
  assign mem = _T_106 & _T_52;
  assign pcwb = _T_37 & _T_50;
  assign _T_119 = _T_34 & _T_49;
  assign _T_123 = _T_119 & _T_45;
  assign func3 = io_IR[14:12];
  assign _GEN_1 = i ? 2'h2 : 2'h3;
  assign _GEN_2 = s ? 2'h1 : _GEN_1;
  assign _GEN_3 = pcb ? 2'h0 : _GEN_2;
  assign _GEN_7 = mem ? 2'h0 : 2'h1;
  assign _GEN_8 = pcwb ? 2'h2 : _GEN_7;
  assign _T_155 = func3 == 3'h0;
  assign _T_158 = _T_155 & io_br_eq;
  assign _T_159 = func3 == 3'h1;
  assign _T_161 = io_br_eq == 1'h0;
  assign _T_162 = _T_159 & _T_161;
  assign _T_163 = _T_158 | _T_162;
  assign _T_164 = func3 == 3'h4;
  assign _T_167 = _T_164 & io_br_lt;
  assign _T_168 = _T_163 | _T_167;
  assign _T_169 = func3 == 3'h5;
  assign _T_171 = io_br_lt == 1'h0;
  assign _T_172 = _T_169 & _T_171;
  assign _T_173 = _T_168 | _T_172;
  assign _T_174 = func3 == 3'h6;
  assign _T_177 = _T_174 & io_br_ltu;
  assign _T_178 = _T_173 | _T_177;
  assign _T_181 = io_br_ltu == 1'h0;
  assign _T_182 = _T_169 & _T_181;
  assign branch = _T_178 | _T_182;
  assign jmp_jalr = _T_34 & _T_43;
  assign _T_193 = _T_123 & branch;
  assign _T_194 = jmp_jalr | _T_193;
  assign _T_197 = _T_194 == 1'h0;
  assign _T_202 = io_Mem_rd | io_Mem_wr_valid;
  assign _T_204 = io_DataMem_rdy == 1'h0;
  assign _GEN_14 = _T_204 ? 2'h1 : 2'h2;
  assign _GEN_15 = io_DataMem_rdy ? 2'h0 : _GEN_14;
  assign _GEN_16 = _T_202 ? _GEN_15 : 2'h2;
  assign _T_210 = _T_202 == 1'h0;
  assign _GEN_17 = _T_210 ? 2'h0 : _GEN_16;
  assign _GEN_18 = _T_197 ? _GEN_17 : 2'h2;
  assign _T_220 = _T_99 & _T_52;
  assign _T_227 = _T_36 & _T_42;
  assign _T_231 = _T_227 & _T_52;
  assign _T_235 = _T_231 & _T_45;
  assign _T_236 = _T_220 | _T_235;
  assign _T_239 = _T_34 & _T_37;
  assign _T_243 = _T_239 & _T_49;
  assign _T_247 = _T_243 & _T_45;
  assign _T_248 = _T_236 | _T_247;
  assign _T_279 = rs2 & _T_45;
  assign _T_280 = io_IR[14];
  assign _T_282 = _T_280 == 1'h0;
  assign _T_283 = _T_279 & _T_282;
  assign _T_284 = io_IR[13];
  assign _T_285 = _T_283 & _T_284;
  assign _T_286 = io_IR[30];
  assign ALU_func4_bit = _T_285 | _T_286;
  assign _T_295 = _T_99 & _T_45;
  assign _T_298 = {1'h1,func3};
  assign _T_300 = ALU_func4_bit == 1'h0;
  assign _T_303 = {1'h0,func3};
  assign _GEN_20 = _T_300 ? _T_303 : _T_298;
  assign _T_305 = _T_295 == 1'h0;
  assign _GEN_22 = _T_305 ? 4'h0 : _GEN_20;
endmodule
