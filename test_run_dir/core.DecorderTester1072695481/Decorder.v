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
  input         clock,
  input         reset,
  input  [31:0] io_IR,
  input         io_br_eq,
  input         io_br_lt,
  input         io_br_ltu,
  input         io_DataMem_rdy,
  output        io_BUS_A_sel,
  output [1:0]  io_BUS_B_sel,
  output [1:0]  io_WB_sel,
  output        io_BRJMP_sel,
  output        io_JBType_sel,
  output        io_PC_MUX_sel1,
  output        io_WEN_RegFile,
  output        io_Mem_rd,
  output        io_Mem_wr_valid,
  output [3:0]  io_ALU_func,
  output        io_IR_skip_Mux_sel
);
  wire  _T_34;
  wire  _T_36;
  wire  _T_37;
  wire  _T_38;
  wire  _T_39;
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
  wire  _GEN_14;
  wire  _T_207;
  wire  _T_214;
  wire  _T_218;
  wire  _T_222;
  wire  _T_223;
  wire  _T_226;
  wire  _T_230;
  wire  _T_234;
  wire  _T_235;
  wire  _T_246;
  wire  _T_250;
  wire  _T_252;
  wire  _T_253;
  wire  _T_274;
  wire  _T_275;
  wire  _T_276;
  wire  _T_277;
  wire  _T_279;
  wire  _T_280;
  wire  _T_281;
  wire  _T_282;
  wire  _T_284;
  wire  _T_288;
  wire  _T_289;
  wire  _T_293;
  wire  _T_296;
  wire  _T_297;
  wire  _T_301;
  wire  _T_305;
  wire  _T_306;
  wire  _T_313;
  wire  _T_317;
  wire  ALU_func4_bit;
  wire  _T_326;
  wire [3:0] _T_329;
  wire  _T_331;
  wire [3:0] _T_334;
  wire [3:0] _GEN_16;
  wire  _T_336;
  wire [3:0] _GEN_18;
  wire  _T_339;
  assign io_BUS_A_sel = u;
  assign io_BUS_B_sel = _GEN_3;
  assign io_WB_sel = _GEN_8;
  assign io_BRJMP_sel = _T_55;
  assign io_JBType_sel = _T_123;
  assign io_PC_MUX_sel1 = _GEN_14;
  assign io_WEN_RegFile = _T_253;
  assign io_Mem_rd = mem;
  assign io_Mem_wr_valid = s;
  assign io_ALU_func = _GEN_18;
  assign io_IR_skip_Mux_sel = _T_339;
  assign _T_34 = io_IR[6];
  assign _T_36 = _T_34 == 1'h0;
  assign _T_37 = io_IR[5];
  assign _T_38 = _T_36 & _T_37;
  assign _T_39 = io_IR[4];
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
  assign _GEN_14 = _T_197 ? 1'h0 : 1'h1;
  assign _T_207 = _T_99 & _T_52;
  assign _T_214 = _T_36 & _T_42;
  assign _T_218 = _T_214 & _T_52;
  assign _T_222 = _T_218 & _T_45;
  assign _T_223 = _T_207 | _T_222;
  assign _T_226 = _T_34 & _T_37;
  assign _T_230 = _T_226 & _T_49;
  assign _T_234 = _T_230 & _T_45;
  assign _T_235 = _T_223 | _T_234;
  assign _T_246 = _T_230 & _T_52;
  assign _T_250 = _T_246 & _T_45;
  assign _T_252 = _T_250 == 1'h0;
  assign _T_253 = _T_235 & _T_252;
  assign _T_274 = io_IR[30];
  assign _T_275 = io_IR[14];
  assign _T_276 = _T_274 & _T_275;
  assign _T_277 = io_IR[13];
  assign _T_279 = _T_277 == 1'h0;
  assign _T_280 = _T_276 & _T_279;
  assign _T_281 = io_IR[12];
  assign _T_282 = _T_280 & _T_281;
  assign _T_284 = _T_282 & _T_39;
  assign _T_288 = _T_275 == 1'h0;
  assign _T_289 = _T_274 & _T_288;
  assign _T_293 = _T_289 & _T_279;
  assign _T_296 = _T_281 == 1'h0;
  assign _T_297 = _T_293 & _T_296;
  assign _T_301 = _T_297 & _T_42;
  assign _T_305 = _T_301 & _T_49;
  assign _T_306 = _T_284 | _T_305;
  assign _T_313 = _T_36 & _T_52;
  assign _T_317 = _T_313 & _T_45;
  assign ALU_func4_bit = _T_306 & _T_317;
  assign _T_326 = _T_99 & _T_45;
  assign _T_329 = {1'h1,func3};
  assign _T_331 = ALU_func4_bit == 1'h0;
  assign _T_334 = {1'h0,func3};
  assign _GEN_16 = _T_331 ? _T_334 : _T_329;
  assign _T_336 = _T_326 == 1'h0;
  assign _GEN_18 = _T_336 ? 4'h0 : _GEN_16;
  assign _T_339 = _T_193 | jmp_jalr;
endmodule
