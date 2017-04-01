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

module OnChipMemory(
  input         clock,
  input         reset,
  output        io_port_0_req_ready,
  input         io_port_0_req_valid,
  input  [31:0] io_port_0_req_bits_addr,
  input  [31:0] io_port_0_req_bits_data,
  input         io_port_0_req_bits_fcn,
  input  [2:0]  io_port_0_req_bits_typ,
  output        io_port_0_resp_valid,
  output [31:0] io_port_0_resp_bits_data,
  output        io_port_1_req_ready,
  input         io_port_1_req_valid,
  input  [31:0] io_port_1_req_bits_addr,
  input  [31:0] io_port_1_req_bits_data,
  input         io_port_1_req_bits_fcn,
  input  [2:0]  io_port_1_req_bits_typ,
  output        io_port_1_resp_valid,
  output [31:0] io_port_1_resp_bits_data
);
  reg [7:0] chipMem_0_0 [0:4095];
  reg [31:0] _GEN_0;
  wire [7:0] chipMem_0_0__T_230_data;
  wire [11:0] chipMem_0_0__T_230_addr;
  wire [7:0] chipMem_0_0__T_396_data;
  wire [11:0] chipMem_0_0__T_396_addr;
  wire  chipMem_0_0__T_396_mask;
  wire  chipMem_0_0__T_396_en;
  reg [7:0] chipMem_0_1 [0:4095];
  reg [31:0] _GEN_1;
  wire [7:0] chipMem_0_1__T_230_data;
  wire [11:0] chipMem_0_1__T_230_addr;
  wire [7:0] chipMem_0_1__T_396_data;
  wire [11:0] chipMem_0_1__T_396_addr;
  wire  chipMem_0_1__T_396_mask;
  wire  chipMem_0_1__T_396_en;
  reg [7:0] chipMem_0_2 [0:4095];
  reg [31:0] _GEN_2;
  wire [7:0] chipMem_0_2__T_230_data;
  wire [11:0] chipMem_0_2__T_230_addr;
  wire [7:0] chipMem_0_2__T_396_data;
  wire [11:0] chipMem_0_2__T_396_addr;
  wire  chipMem_0_2__T_396_mask;
  wire  chipMem_0_2__T_396_en;
  reg [7:0] chipMem_0_3 [0:4095];
  reg [31:0] _GEN_3;
  wire [7:0] chipMem_0_3__T_230_data;
  wire [11:0] chipMem_0_3__T_230_addr;
  wire [7:0] chipMem_0_3__T_396_data;
  wire [11:0] chipMem_0_3__T_396_addr;
  wire  chipMem_0_3__T_396_mask;
  wire  chipMem_0_3__T_396_en;
  reg [7:0] chipMem_1_0 [0:4095];
  reg [31:0] _GEN_4;
  wire [7:0] chipMem_1_0__T_437_data;
  wire [11:0] chipMem_1_0__T_437_addr;
  wire [7:0] chipMem_1_0__T_592_data;
  wire [11:0] chipMem_1_0__T_592_addr;
  wire  chipMem_1_0__T_592_mask;
  wire  chipMem_1_0__T_592_en;
  reg [7:0] chipMem_1_1 [0:4095];
  reg [31:0] _GEN_5;
  wire [7:0] chipMem_1_1__T_437_data;
  wire [11:0] chipMem_1_1__T_437_addr;
  wire [7:0] chipMem_1_1__T_592_data;
  wire [11:0] chipMem_1_1__T_592_addr;
  wire  chipMem_1_1__T_592_mask;
  wire  chipMem_1_1__T_592_en;
  reg [7:0] chipMem_1_2 [0:4095];
  reg [31:0] _GEN_6;
  wire [7:0] chipMem_1_2__T_437_data;
  wire [11:0] chipMem_1_2__T_437_addr;
  wire [7:0] chipMem_1_2__T_592_data;
  wire [11:0] chipMem_1_2__T_592_addr;
  wire  chipMem_1_2__T_592_mask;
  wire  chipMem_1_2__T_592_en;
  reg [7:0] chipMem_1_3 [0:4095];
  reg [31:0] _GEN_7;
  wire [7:0] chipMem_1_3__T_437_data;
  wire [11:0] chipMem_1_3__T_437_addr;
  wire [7:0] chipMem_1_3__T_592_data;
  wire [11:0] chipMem_1_3__T_592_addr;
  wire  chipMem_1_3__T_592_mask;
  wire  chipMem_1_3__T_592_en;
  reg  _T_208;
  reg [31:0] _GEN_8;
  wire [1:0] _T_210;
  wire [4:0] _T_212;
  reg [31:0] _T_214;
  reg [31:0] _GEN_9;
  wire [31:0] _T_216;
  wire [7:0] _T_220_0;
  wire [7:0] _T_220_1;
  wire [7:0] _T_220_2;
  wire [7:0] _T_220_3;
  wire [31:0] _T_228;
  wire [11:0] _T_229;
  wire [15:0] _T_242;
  wire [15:0] _T_243;
  wire [31:0] _T_244;
  wire [31:0] _T_245;
  wire  _T_257;
  wire  _T_258;
  wire [15:0] _T_262;
  wire [15:0] _T_263;
  wire [31:0] _T_264;
  wire  _T_265;
  wire [31:0] _T_272;
  wire  _T_273;
  wire  _T_274;
  wire [23:0] _T_278;
  wire [7:0] _T_279;
  wire [31:0] _T_280;
  wire  _T_281;
  wire [31:0] _T_288;
  wire [31:0] _T_290;
  wire [31:0] _T_291;
  wire [31:0] _T_292;
  wire [31:0] _T_293;
  wire  _T_295;
  wire  _T_301;
  wire  _T_304;
  wire [7:0] _T_308_0;
  wire [7:0] _T_308_1;
  wire [7:0] _T_308_2;
  wire [7:0] _T_308_3;
  wire [7:0] _T_315;
  wire [7:0] _T_321_0;
  wire [7:0] _T_321_1;
  wire [7:0] _T_321_2;
  wire [7:0] _T_321_3;
  wire [7:0] _T_329;
  wire [7:0] _T_334_0;
  wire [7:0] _T_334_1;
  wire [7:0] _T_334_2;
  wire [7:0] _T_334_3;
  wire [7:0] _T_343;
  wire [7:0] _T_344;
  wire [7:0] _T_347_0;
  wire [7:0] _T_347_1;
  wire [7:0] _T_347_2;
  wire [7:0] _T_347_3;
  wire [7:0] _T_354_0;
  wire [7:0] _T_354_1;
  wire [7:0] _T_354_2;
  wire [7:0] _T_354_3;
  wire [7:0] _T_366_0;
  wire [7:0] _T_366_1;
  wire [7:0] _T_366_2;
  wire [7:0] _T_366_3;
  wire [3:0] _T_387;
  wire [3:0] _T_388;
  wire [6:0] _GEN_88;
  wire [6:0] _T_389;
  wire [3:0] _T_390;
  wire  _T_391;
  wire  _T_392;
  wire  _T_393;
  wire  _T_394;
  wire  _GEN_12;
  wire  _GEN_14;
  wire  _GEN_16;
  wire  _GEN_18;
  wire  _T_408;
  wire  _T_409;
  wire  _T_411;
  wire  _T_412;
  wire [31:0] _GEN_19;
  reg  _T_415;
  reg [31:0] _GEN_10;
  wire [1:0] _T_417;
  wire [4:0] _T_419;
  reg [31:0] _T_421;
  reg [31:0] _GEN_11;
  wire [31:0] _T_423;
  wire [7:0] _T_427_0;
  wire [7:0] _T_427_1;
  wire [7:0] _T_427_2;
  wire [7:0] _T_427_3;
  wire [31:0] _T_435;
  wire [11:0] _T_436;
  wire [15:0] _T_449;
  wire [15:0] _T_450;
  wire [31:0] _T_451;
  wire [31:0] _T_452;
  wire  _T_453;
  wire  _T_454;
  wire [15:0] _T_458;
  wire [15:0] _T_459;
  wire [31:0] _T_460;
  wire  _T_461;
  wire [31:0] _T_468;
  wire  _T_469;
  wire  _T_470;
  wire [23:0] _T_474;
  wire [7:0] _T_475;
  wire [31:0] _T_476;
  wire  _T_477;
  wire [31:0] _T_484;
  wire [31:0] _T_486;
  wire [31:0] _T_487;
  wire [31:0] _T_488;
  wire [31:0] _T_489;
  wire  _T_491;
  wire  _T_497;
  wire  _T_500;
  wire [7:0] _T_504_0;
  wire [7:0] _T_504_1;
  wire [7:0] _T_504_2;
  wire [7:0] _T_504_3;
  wire [7:0] _T_511;
  wire [7:0] _T_517_0;
  wire [7:0] _T_517_1;
  wire [7:0] _T_517_2;
  wire [7:0] _T_517_3;
  wire [7:0] _T_525;
  wire [7:0] _T_530_0;
  wire [7:0] _T_530_1;
  wire [7:0] _T_530_2;
  wire [7:0] _T_530_3;
  wire [7:0] _T_539;
  wire [7:0] _T_540;
  wire [7:0] _T_543_0;
  wire [7:0] _T_543_1;
  wire [7:0] _T_543_2;
  wire [7:0] _T_543_3;
  wire [7:0] _T_550_0;
  wire [7:0] _T_550_1;
  wire [7:0] _T_550_2;
  wire [7:0] _T_550_3;
  wire [7:0] _T_562_0;
  wire [7:0] _T_562_1;
  wire [7:0] _T_562_2;
  wire [7:0] _T_562_3;
  wire [3:0] _T_583;
  wire [3:0] _T_584;
  wire [6:0] _GEN_89;
  wire [6:0] _T_585;
  wire [3:0] _T_586;
  wire  _T_587;
  wire  _T_588;
  wire  _T_589;
  wire  _T_590;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire  _GEN_38;
  wire  _T_604;
  wire  _T_605;
  wire  _T_607;
  wire  _T_608;
  wire [31:0] _GEN_39;
  assign io_port_0_req_ready = 1'h1;
  assign io_port_0_resp_valid = _T_208;
  assign io_port_0_resp_bits_data = _T_228;
  assign io_port_1_req_ready = 1'h1;
  assign io_port_1_resp_valid = _T_415;
  assign io_port_1_resp_bits_data = _T_435;
  assign chipMem_0_0__T_230_addr = _T_229;
  assign chipMem_0_0__T_230_data = chipMem_0_0[chipMem_0_0__T_230_addr];
  assign chipMem_0_0__T_396_data = _T_308_0;
  assign chipMem_0_0__T_396_addr = _T_229;
  assign chipMem_0_0__T_396_mask = _GEN_12;
  assign chipMem_0_0__T_396_en = _T_295;
  assign chipMem_0_1__T_230_addr = _T_229;
  assign chipMem_0_1__T_230_data = chipMem_0_1[chipMem_0_1__T_230_addr];
  assign chipMem_0_1__T_396_data = _T_308_1;
  assign chipMem_0_1__T_396_addr = _T_229;
  assign chipMem_0_1__T_396_mask = _GEN_14;
  assign chipMem_0_1__T_396_en = _T_295;
  assign chipMem_0_2__T_230_addr = _T_229;
  assign chipMem_0_2__T_230_data = chipMem_0_2[chipMem_0_2__T_230_addr];
  assign chipMem_0_2__T_396_data = _T_308_2;
  assign chipMem_0_2__T_396_addr = _T_229;
  assign chipMem_0_2__T_396_mask = _GEN_16;
  assign chipMem_0_2__T_396_en = _T_295;
  assign chipMem_0_3__T_230_addr = _T_229;
  assign chipMem_0_3__T_230_data = chipMem_0_3[chipMem_0_3__T_230_addr];
  assign chipMem_0_3__T_396_data = _T_308_3;
  assign chipMem_0_3__T_396_addr = _T_229;
  assign chipMem_0_3__T_396_mask = _GEN_18;
  assign chipMem_0_3__T_396_en = _T_295;
  assign chipMem_1_0__T_437_addr = _T_436;
  assign chipMem_1_0__T_437_data = chipMem_1_0[chipMem_1_0__T_437_addr];
  assign chipMem_1_0__T_592_data = _T_504_0;
  assign chipMem_1_0__T_592_addr = _T_436;
  assign chipMem_1_0__T_592_mask = _GEN_32;
  assign chipMem_1_0__T_592_en = _T_491;
  assign chipMem_1_1__T_437_addr = _T_436;
  assign chipMem_1_1__T_437_data = chipMem_1_1[chipMem_1_1__T_437_addr];
  assign chipMem_1_1__T_592_data = _T_504_1;
  assign chipMem_1_1__T_592_addr = _T_436;
  assign chipMem_1_1__T_592_mask = _GEN_34;
  assign chipMem_1_1__T_592_en = _T_491;
  assign chipMem_1_2__T_437_addr = _T_436;
  assign chipMem_1_2__T_437_data = chipMem_1_2[chipMem_1_2__T_437_addr];
  assign chipMem_1_2__T_592_data = _T_504_2;
  assign chipMem_1_2__T_592_addr = _T_436;
  assign chipMem_1_2__T_592_mask = _GEN_36;
  assign chipMem_1_2__T_592_en = _T_491;
  assign chipMem_1_3__T_437_addr = _T_436;
  assign chipMem_1_3__T_437_data = chipMem_1_3[chipMem_1_3__T_437_addr];
  assign chipMem_1_3__T_592_data = _T_504_3;
  assign chipMem_1_3__T_592_addr = _T_436;
  assign chipMem_1_3__T_592_mask = _GEN_38;
  assign chipMem_1_3__T_592_en = _T_491;
  assign _T_210 = io_port_0_req_bits_addr[1:0];
  assign _T_212 = {_T_210,3'h0};
  assign _T_216 = io_port_0_req_bits_addr >> 2'h2;
  assign _T_220_0 = chipMem_0_0__T_230_data;
  assign _T_220_1 = chipMem_0_1__T_230_data;
  assign _T_220_2 = chipMem_0_2__T_230_data;
  assign _T_220_3 = chipMem_0_3__T_230_data;
  assign _T_228 = _T_293;
  assign _T_229 = _T_216[11:0];
  assign _T_242 = {_T_220_1,_T_220_0};
  assign _T_243 = {_T_220_3,_T_220_2};
  assign _T_244 = {_T_243,_T_242};
  assign _T_245 = _T_244 >> _T_212;
  assign _T_257 = io_port_0_req_bits_typ == 3'h1;
  assign _T_258 = _T_245[15];
  assign _T_262 = _T_258 ? 16'hffff : 16'h0;
  assign _T_263 = _T_245[15:0];
  assign _T_264 = {_T_262,_T_263};
  assign _T_265 = io_port_0_req_bits_typ == 3'h5;
  assign _T_272 = {16'h0,_T_263};
  assign _T_273 = io_port_0_req_bits_typ == 3'h0;
  assign _T_274 = _T_245[7];
  assign _T_278 = _T_274 ? 24'hffffff : 24'h0;
  assign _T_279 = _T_245[7:0];
  assign _T_280 = {_T_278,_T_279};
  assign _T_281 = io_port_0_req_bits_typ == 3'h4;
  assign _T_288 = {24'h0,_T_279};
  assign _T_290 = _T_281 ? _T_288 : _T_245;
  assign _T_291 = _T_273 ? _T_280 : _T_290;
  assign _T_292 = _T_265 ? _T_272 : _T_291;
  assign _T_293 = _T_257 ? _T_264 : _T_292;
  assign _T_295 = io_port_0_req_valid & io_port_0_req_bits_fcn;
  assign _T_301 = _T_257 | _T_265;
  assign _T_304 = _T_273 | _T_281;
  assign _T_308_0 = _T_366_0;
  assign _T_308_1 = _T_366_1;
  assign _T_308_2 = _T_366_2;
  assign _T_308_3 = _T_366_3;
  assign _T_315 = io_port_0_req_bits_data[7:0];
  assign _T_321_0 = _T_315;
  assign _T_321_1 = _T_315;
  assign _T_321_2 = _T_315;
  assign _T_321_3 = _T_315;
  assign _T_329 = io_port_0_req_bits_data[15:8];
  assign _T_334_0 = _T_315;
  assign _T_334_1 = _T_329;
  assign _T_334_2 = _T_315;
  assign _T_334_3 = _T_329;
  assign _T_343 = io_port_0_req_bits_data[23:16];
  assign _T_344 = io_port_0_req_bits_data[31:24];
  assign _T_347_0 = _T_315;
  assign _T_347_1 = _T_329;
  assign _T_347_2 = _T_343;
  assign _T_347_3 = _T_344;
  assign _T_354_0 = _T_301 ? _T_334_0 : _T_347_0;
  assign _T_354_1 = _T_301 ? _T_334_1 : _T_347_1;
  assign _T_354_2 = _T_301 ? _T_334_2 : _T_347_2;
  assign _T_354_3 = _T_301 ? _T_334_3 : _T_347_3;
  assign _T_366_0 = _T_304 ? _T_321_0 : _T_354_0;
  assign _T_366_1 = _T_304 ? _T_321_1 : _T_354_1;
  assign _T_366_2 = _T_304 ? _T_321_2 : _T_354_2;
  assign _T_366_3 = _T_304 ? _T_321_3 : _T_354_3;
  assign _T_387 = _T_304 ? 4'h1 : 4'hf;
  assign _T_388 = _T_301 ? 4'h3 : _T_387;
  assign _GEN_88 = {{3'd0}, _T_388};
  assign _T_389 = _GEN_88 << _T_210;
  assign _T_390 = _T_389[3:0];
  assign _T_391 = _T_390[0];
  assign _T_392 = _T_390[1];
  assign _T_393 = _T_390[2];
  assign _T_394 = _T_390[3];
  assign _GEN_12 = _T_295 ? _T_391 : 1'h0;
  assign _GEN_14 = _T_295 ? _T_392 : 1'h0;
  assign _GEN_16 = _T_295 ? _T_393 : 1'h0;
  assign _GEN_18 = _T_295 ? _T_394 : 1'h0;
  assign _T_408 = io_port_0_req_bits_fcn == 1'h0;
  assign _T_409 = io_port_0_req_valid & _T_408;
  assign _T_411 = _T_295 == 1'h0;
  assign _T_412 = _T_411 & _T_409;
  assign _GEN_19 = _T_412 ? _T_216 : _T_214;
  assign _T_417 = io_port_1_req_bits_addr[1:0];
  assign _T_419 = {_T_417,3'h0};
  assign _T_423 = io_port_1_req_bits_addr >> 2'h2;
  assign _T_427_0 = chipMem_1_0__T_437_data;
  assign _T_427_1 = chipMem_1_1__T_437_data;
  assign _T_427_2 = chipMem_1_2__T_437_data;
  assign _T_427_3 = chipMem_1_3__T_437_data;
  assign _T_435 = _T_489;
  assign _T_436 = _T_423[11:0];
  assign _T_449 = {_T_427_1,_T_427_0};
  assign _T_450 = {_T_427_3,_T_427_2};
  assign _T_451 = {_T_450,_T_449};
  assign _T_452 = _T_451 >> _T_419;
  assign _T_453 = io_port_1_req_bits_typ == 3'h1;
  assign _T_454 = _T_452[15];
  assign _T_458 = _T_454 ? 16'hffff : 16'h0;
  assign _T_459 = _T_452[15:0];
  assign _T_460 = {_T_458,_T_459};
  assign _T_461 = io_port_1_req_bits_typ == 3'h5;
  assign _T_468 = {16'h0,_T_459};
  assign _T_469 = io_port_1_req_bits_typ == 3'h0;
  assign _T_470 = _T_452[7];
  assign _T_474 = _T_470 ? 24'hffffff : 24'h0;
  assign _T_475 = _T_452[7:0];
  assign _T_476 = {_T_474,_T_475};
  assign _T_477 = io_port_1_req_bits_typ == 3'h4;
  assign _T_484 = {24'h0,_T_475};
  assign _T_486 = _T_477 ? _T_484 : _T_452;
  assign _T_487 = _T_469 ? _T_476 : _T_486;
  assign _T_488 = _T_461 ? _T_468 : _T_487;
  assign _T_489 = _T_453 ? _T_460 : _T_488;
  assign _T_491 = io_port_1_req_valid & io_port_1_req_bits_fcn;
  assign _T_497 = _T_453 | _T_461;
  assign _T_500 = _T_469 | _T_477;
  assign _T_504_0 = _T_562_0;
  assign _T_504_1 = _T_562_1;
  assign _T_504_2 = _T_562_2;
  assign _T_504_3 = _T_562_3;
  assign _T_511 = io_port_1_req_bits_data[7:0];
  assign _T_517_0 = _T_511;
  assign _T_517_1 = _T_511;
  assign _T_517_2 = _T_511;
  assign _T_517_3 = _T_511;
  assign _T_525 = io_port_1_req_bits_data[15:8];
  assign _T_530_0 = _T_511;
  assign _T_530_1 = _T_525;
  assign _T_530_2 = _T_511;
  assign _T_530_3 = _T_525;
  assign _T_539 = io_port_1_req_bits_data[23:16];
  assign _T_540 = io_port_1_req_bits_data[31:24];
  assign _T_543_0 = _T_511;
  assign _T_543_1 = _T_525;
  assign _T_543_2 = _T_539;
  assign _T_543_3 = _T_540;
  assign _T_550_0 = _T_497 ? _T_530_0 : _T_543_0;
  assign _T_550_1 = _T_497 ? _T_530_1 : _T_543_1;
  assign _T_550_2 = _T_497 ? _T_530_2 : _T_543_2;
  assign _T_550_3 = _T_497 ? _T_530_3 : _T_543_3;
  assign _T_562_0 = _T_500 ? _T_517_0 : _T_550_0;
  assign _T_562_1 = _T_500 ? _T_517_1 : _T_550_1;
  assign _T_562_2 = _T_500 ? _T_517_2 : _T_550_2;
  assign _T_562_3 = _T_500 ? _T_517_3 : _T_550_3;
  assign _T_583 = _T_500 ? 4'h1 : 4'hf;
  assign _T_584 = _T_497 ? 4'h3 : _T_583;
  assign _GEN_89 = {{3'd0}, _T_584};
  assign _T_585 = _GEN_89 << _T_417;
  assign _T_586 = _T_585[3:0];
  assign _T_587 = _T_586[0];
  assign _T_588 = _T_586[1];
  assign _T_589 = _T_586[2];
  assign _T_590 = _T_586[3];
  assign _GEN_32 = _T_491 ? _T_587 : 1'h0;
  assign _GEN_34 = _T_491 ? _T_588 : 1'h0;
  assign _GEN_36 = _T_491 ? _T_589 : 1'h0;
  assign _GEN_38 = _T_491 ? _T_590 : 1'h0;
  assign _T_604 = io_port_1_req_bits_fcn == 1'h0;
  assign _T_605 = io_port_1_req_valid & _T_604;
  assign _T_607 = _T_491 == 1'h0;
  assign _T_608 = _T_607 & _T_605;
  assign _GEN_39 = _T_608 ? _T_423 : _T_421;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _GEN_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_0_0[initvar] = _GEN_0[7:0];
  `endif
  _GEN_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_0_1[initvar] = _GEN_1[7:0];
  `endif
  _GEN_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_0_2[initvar] = _GEN_2[7:0];
  `endif
  _GEN_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_0_3[initvar] = _GEN_3[7:0];
  `endif
  _GEN_4 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_1_0[initvar] = _GEN_4[7:0];
  `endif
  _GEN_5 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_1_1[initvar] = _GEN_5[7:0];
  `endif
  _GEN_6 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_1_2[initvar] = _GEN_6[7:0];
  `endif
  _GEN_7 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    chipMem_1_3[initvar] = _GEN_7[7:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_8 = {1{$random}};
  _T_208 = _GEN_8[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_9 = {1{$random}};
  _T_214 = _GEN_9[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_10 = {1{$random}};
  _T_415 = _GEN_10[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_11 = {1{$random}};
  _T_421 = _GEN_11[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if(chipMem_0_0__T_396_en & chipMem_0_0__T_396_mask) begin
      chipMem_0_0[chipMem_0_0__T_396_addr] <= chipMem_0_0__T_396_data;
    end
    if(chipMem_0_1__T_396_en & chipMem_0_1__T_396_mask) begin
      chipMem_0_1[chipMem_0_1__T_396_addr] <= chipMem_0_1__T_396_data;
    end
    if(chipMem_0_2__T_396_en & chipMem_0_2__T_396_mask) begin
      chipMem_0_2[chipMem_0_2__T_396_addr] <= chipMem_0_2__T_396_data;
    end
    if(chipMem_0_3__T_396_en & chipMem_0_3__T_396_mask) begin
      chipMem_0_3[chipMem_0_3__T_396_addr] <= chipMem_0_3__T_396_data;
    end
    if(chipMem_1_0__T_592_en & chipMem_1_0__T_592_mask) begin
      chipMem_1_0[chipMem_1_0__T_592_addr] <= chipMem_1_0__T_592_data;
    end
    if(chipMem_1_1__T_592_en & chipMem_1_1__T_592_mask) begin
      chipMem_1_1[chipMem_1_1__T_592_addr] <= chipMem_1_1__T_592_data;
    end
    if(chipMem_1_2__T_592_en & chipMem_1_2__T_592_mask) begin
      chipMem_1_2[chipMem_1_2__T_592_addr] <= chipMem_1_2__T_592_data;
    end
    if(chipMem_1_3__T_592_en & chipMem_1_3__T_592_mask) begin
      chipMem_1_3[chipMem_1_3__T_592_addr] <= chipMem_1_3__T_592_data;
    end
    if (reset) begin
      _T_208 <= 1'h0;
    end else begin
      _T_208 <= io_port_0_req_valid;
    end
    if (_T_412) begin
      _T_214 <= _T_216;
    end
    if (reset) begin
      _T_415 <= 1'h0;
    end else begin
      _T_415 <= io_port_1_req_valid;
    end
    if (_T_608) begin
      _T_421 <= _T_423;
    end
  end
endmodule
