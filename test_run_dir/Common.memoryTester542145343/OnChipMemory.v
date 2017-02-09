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
  input   clock,
  input   reset,
  output  io_port_0_req_ready,
  input   io_port_0_req_valid,
  input  [31:0] io_port_0_req_bits_addr,
  input  [31:0] io_port_0_req_bits_data,
  input   io_port_0_req_bits_fcn,
  input  [2:0] io_port_0_req_bits_typ,
  output  io_port_0_resp_valid,
  output [31:0] io_port_0_resp_bits_data,
  output  io_port_1_req_ready,
  input   io_port_1_req_valid,
  input  [31:0] io_port_1_req_bits_addr,
  input  [31:0] io_port_1_req_bits_data,
  input   io_port_1_req_bits_fcn,
  input  [2:0] io_port_1_req_bits_typ,
  output  io_port_1_resp_valid,
  output [31:0] io_port_1_resp_bits_data
);
  reg [7:0] chipMem_0 [0:8191];
  reg [31:0] _GEN_0;
  wire [7:0] chipMem_0__T_209_data;
  wire [12:0] chipMem_0__T_209_addr;
  wire [7:0] chipMem_0__T_390_data;
  wire [12:0] chipMem_0__T_390_addr;
  wire [7:0] chipMem_0__T_365_data;
  wire [12:0] chipMem_0__T_365_addr;
  wire  chipMem_0__T_365_mask;
  wire  chipMem_0__T_365_en;
  wire [7:0] chipMem_0__T_535_data;
  wire [12:0] chipMem_0__T_535_addr;
  wire  chipMem_0__T_535_mask;
  wire  chipMem_0__T_535_en;
  reg [7:0] chipMem_1 [0:8191];
  reg [31:0] _GEN_1;
  wire [7:0] chipMem_1__T_209_data;
  wire [12:0] chipMem_1__T_209_addr;
  wire [7:0] chipMem_1__T_390_data;
  wire [12:0] chipMem_1__T_390_addr;
  wire [7:0] chipMem_1__T_365_data;
  wire [12:0] chipMem_1__T_365_addr;
  wire  chipMem_1__T_365_mask;
  wire  chipMem_1__T_365_en;
  wire [7:0] chipMem_1__T_535_data;
  wire [12:0] chipMem_1__T_535_addr;
  wire  chipMem_1__T_535_mask;
  wire  chipMem_1__T_535_en;
  reg [7:0] chipMem_2 [0:8191];
  reg [31:0] _GEN_2;
  wire [7:0] chipMem_2__T_209_data;
  wire [12:0] chipMem_2__T_209_addr;
  wire [7:0] chipMem_2__T_390_data;
  wire [12:0] chipMem_2__T_390_addr;
  wire [7:0] chipMem_2__T_365_data;
  wire [12:0] chipMem_2__T_365_addr;
  wire  chipMem_2__T_365_mask;
  wire  chipMem_2__T_365_en;
  wire [7:0] chipMem_2__T_535_data;
  wire [12:0] chipMem_2__T_535_addr;
  wire  chipMem_2__T_535_mask;
  wire  chipMem_2__T_535_en;
  reg [7:0] chipMem_3 [0:8191];
  reg [31:0] _GEN_3;
  wire [7:0] chipMem_3__T_209_data;
  wire [12:0] chipMem_3__T_209_addr;
  wire [7:0] chipMem_3__T_390_data;
  wire [12:0] chipMem_3__T_390_addr;
  wire [7:0] chipMem_3__T_365_data;
  wire [12:0] chipMem_3__T_365_addr;
  wire  chipMem_3__T_365_mask;
  wire  chipMem_3__T_365_en;
  wire [7:0] chipMem_3__T_535_data;
  wire [12:0] chipMem_3__T_535_addr;
  wire  chipMem_3__T_535_mask;
  wire  chipMem_3__T_535_en;
  reg  _T_192;
  reg [31:0] _GEN_4;
  wire [1:0] _T_194;
  wire [4:0] _T_196;
  reg [31:0] _T_198;
  reg [31:0] _GEN_5;
  wire [31:0] _T_200;
  wire [7:0] _T_204_0;
  wire [7:0] _T_204_1;
  wire [7:0] _T_204_2;
  wire [7:0] _T_204_3;
  wire [31:0] _T_207;
  wire [12:0] _T_208;
  wire [15:0] _T_211;
  wire [15:0] _T_212;
  wire [31:0] _T_213;
  wire [31:0] _T_214;
  wire  _T_226;
  wire  _T_227;
  wire [15:0] _T_231;
  wire [15:0] _T_232;
  wire [31:0] _T_233;
  wire  _T_234;
  wire [31:0] _T_241;
  wire  _T_242;
  wire  _T_243;
  wire [23:0] _T_247;
  wire [7:0] _T_248;
  wire [31:0] _T_249;
  wire  _T_250;
  wire [31:0] _T_257;
  wire [31:0] _T_259;
  wire [31:0] _T_260;
  wire [31:0] _T_261;
  wire [31:0] _T_262;
  wire  _T_264;
  wire  _T_270;
  wire  _T_273;
  wire [7:0] _T_277_0;
  wire [7:0] _T_277_1;
  wire [7:0] _T_277_2;
  wire [7:0] _T_277_3;
  wire [7:0] _T_279;
  wire [7:0] _T_290_0;
  wire [7:0] _T_290_1;
  wire [7:0] _T_290_2;
  wire [7:0] _T_290_3;
  wire [7:0] _T_298;
  wire [7:0] _T_308_0;
  wire [7:0] _T_308_1;
  wire [7:0] _T_308_2;
  wire [7:0] _T_308_3;
  wire [7:0] _T_317;
  wire [7:0] _T_318;
  wire [7:0] _T_326_0;
  wire [7:0] _T_326_1;
  wire [7:0] _T_326_2;
  wire [7:0] _T_326_3;
  wire [7:0] _T_333_0;
  wire [7:0] _T_333_1;
  wire [7:0] _T_333_2;
  wire [7:0] _T_333_3;
  wire [7:0] _T_340_0;
  wire [7:0] _T_340_1;
  wire [7:0] _T_340_2;
  wire [7:0] _T_340_3;
  wire [3:0] _T_356;
  wire [3:0] _T_357;
  wire [6:0] _GEN_88;
  wire [6:0] _T_358;
  wire [3:0] _T_359;
  wire  _T_360;
  wire  _T_361;
  wire  _T_362;
  wire  _T_363;
  wire  _GEN_12;
  wire  _GEN_14;
  wire  _GEN_16;
  wire  _GEN_18;
  wire  _T_367;
  wire  _T_368;
  wire  _T_370;
  wire  _T_371;
  wire [31:0] _GEN_19;
  reg  _T_373;
  reg [31:0] _GEN_6;
  wire [1:0] _T_375;
  wire [4:0] _T_377;
  reg [31:0] _T_379;
  reg [31:0] _GEN_7;
  wire [31:0] _T_381;
  wire [7:0] _T_385_0;
  wire [7:0] _T_385_1;
  wire [7:0] _T_385_2;
  wire [7:0] _T_385_3;
  wire [31:0] _T_388;
  wire [12:0] _T_389;
  wire [15:0] _T_392;
  wire [15:0] _T_393;
  wire [31:0] _T_394;
  wire [31:0] _T_395;
  wire  _T_396;
  wire  _T_397;
  wire [15:0] _T_401;
  wire [15:0] _T_402;
  wire [31:0] _T_403;
  wire  _T_404;
  wire [31:0] _T_411;
  wire  _T_412;
  wire  _T_413;
  wire [23:0] _T_417;
  wire [7:0] _T_418;
  wire [31:0] _T_419;
  wire  _T_420;
  wire [31:0] _T_427;
  wire [31:0] _T_429;
  wire [31:0] _T_430;
  wire [31:0] _T_431;
  wire [31:0] _T_432;
  wire  _T_434;
  wire  _T_440;
  wire  _T_443;
  wire [7:0] _T_447_0;
  wire [7:0] _T_447_1;
  wire [7:0] _T_447_2;
  wire [7:0] _T_447_3;
  wire [7:0] _T_449;
  wire [7:0] _T_460_0;
  wire [7:0] _T_460_1;
  wire [7:0] _T_460_2;
  wire [7:0] _T_460_3;
  wire [7:0] _T_468;
  wire [7:0] _T_478_0;
  wire [7:0] _T_478_1;
  wire [7:0] _T_478_2;
  wire [7:0] _T_478_3;
  wire [7:0] _T_487;
  wire [7:0] _T_488;
  wire [7:0] _T_496_0;
  wire [7:0] _T_496_1;
  wire [7:0] _T_496_2;
  wire [7:0] _T_496_3;
  wire [7:0] _T_503_0;
  wire [7:0] _T_503_1;
  wire [7:0] _T_503_2;
  wire [7:0] _T_503_3;
  wire [7:0] _T_510_0;
  wire [7:0] _T_510_1;
  wire [7:0] _T_510_2;
  wire [7:0] _T_510_3;
  wire [3:0] _T_526;
  wire [3:0] _T_527;
  wire [6:0] _GEN_89;
  wire [6:0] _T_528;
  wire [3:0] _T_529;
  wire  _T_530;
  wire  _T_531;
  wire  _T_532;
  wire  _T_533;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire  _GEN_38;
  wire  _T_537;
  wire  _T_538;
  wire  _T_540;
  wire  _T_541;
  wire [31:0] _GEN_39;
  assign io_port_0_req_ready = 1'h1;
  assign io_port_0_resp_valid = _T_192;
  assign io_port_0_resp_bits_data = _T_207;
  assign io_port_1_req_ready = 1'h1;
  assign io_port_1_resp_valid = _T_373;
  assign io_port_1_resp_bits_data = _T_388;
  assign chipMem_0__T_209_addr = _T_208;
  assign chipMem_0__T_209_data = chipMem_0[chipMem_0__T_209_addr];
  assign chipMem_0__T_390_addr = _T_389;
  assign chipMem_0__T_390_data = chipMem_0[chipMem_0__T_390_addr];
  assign chipMem_0__T_365_data = _T_277_0;
  assign chipMem_0__T_365_addr = _T_208;
  assign chipMem_0__T_365_mask = _GEN_12;
  assign chipMem_0__T_365_en = _T_264;
  assign chipMem_0__T_535_data = _T_447_0;
  assign chipMem_0__T_535_addr = _T_389;
  assign chipMem_0__T_535_mask = _GEN_32;
  assign chipMem_0__T_535_en = _T_434;
  assign chipMem_1__T_209_addr = _T_208;
  assign chipMem_1__T_209_data = chipMem_1[chipMem_1__T_209_addr];
  assign chipMem_1__T_390_addr = _T_389;
  assign chipMem_1__T_390_data = chipMem_1[chipMem_1__T_390_addr];
  assign chipMem_1__T_365_data = _T_277_1;
  assign chipMem_1__T_365_addr = _T_208;
  assign chipMem_1__T_365_mask = _GEN_14;
  assign chipMem_1__T_365_en = _T_264;
  assign chipMem_1__T_535_data = _T_447_1;
  assign chipMem_1__T_535_addr = _T_389;
  assign chipMem_1__T_535_mask = _GEN_34;
  assign chipMem_1__T_535_en = _T_434;
  assign chipMem_2__T_209_addr = _T_208;
  assign chipMem_2__T_209_data = chipMem_2[chipMem_2__T_209_addr];
  assign chipMem_2__T_390_addr = _T_389;
  assign chipMem_2__T_390_data = chipMem_2[chipMem_2__T_390_addr];
  assign chipMem_2__T_365_data = _T_277_2;
  assign chipMem_2__T_365_addr = _T_208;
  assign chipMem_2__T_365_mask = _GEN_16;
  assign chipMem_2__T_365_en = _T_264;
  assign chipMem_2__T_535_data = _T_447_2;
  assign chipMem_2__T_535_addr = _T_389;
  assign chipMem_2__T_535_mask = _GEN_36;
  assign chipMem_2__T_535_en = _T_434;
  assign chipMem_3__T_209_addr = _T_208;
  assign chipMem_3__T_209_data = chipMem_3[chipMem_3__T_209_addr];
  assign chipMem_3__T_390_addr = _T_389;
  assign chipMem_3__T_390_data = chipMem_3[chipMem_3__T_390_addr];
  assign chipMem_3__T_365_data = _T_277_3;
  assign chipMem_3__T_365_addr = _T_208;
  assign chipMem_3__T_365_mask = _GEN_18;
  assign chipMem_3__T_365_en = _T_264;
  assign chipMem_3__T_535_data = _T_447_3;
  assign chipMem_3__T_535_addr = _T_389;
  assign chipMem_3__T_535_mask = _GEN_38;
  assign chipMem_3__T_535_en = _T_434;
  assign _T_194 = io_port_0_req_bits_addr[1:0];
  assign _T_196 = {_T_194,3'h0};
  assign _T_200 = io_port_0_req_bits_addr >> 2'h2;
  assign _T_204_0 = chipMem_0__T_209_data;
  assign _T_204_1 = chipMem_1__T_209_data;
  assign _T_204_2 = chipMem_2__T_209_data;
  assign _T_204_3 = chipMem_3__T_209_data;
  assign _T_207 = _T_262;
  assign _T_208 = _T_200[12:0];
  assign _T_211 = {_T_204_1,_T_204_0};
  assign _T_212 = {_T_204_3,_T_204_2};
  assign _T_213 = {_T_212,_T_211};
  assign _T_214 = _T_213 >> _T_196;
  assign _T_226 = io_port_0_req_bits_typ == 3'h2;
  assign _T_227 = _T_214[15];
  assign _T_231 = _T_227 ? 16'hffff : 16'h0;
  assign _T_232 = _T_214[15:0];
  assign _T_233 = {_T_231,_T_232};
  assign _T_234 = io_port_0_req_bits_typ == 3'h6;
  assign _T_241 = {16'h0,_T_232};
  assign _T_242 = io_port_0_req_bits_typ == 3'h1;
  assign _T_243 = _T_214[7];
  assign _T_247 = _T_243 ? 24'hffffff : 24'h0;
  assign _T_248 = _T_214[7:0];
  assign _T_249 = {_T_247,_T_248};
  assign _T_250 = io_port_0_req_bits_typ == 3'h5;
  assign _T_257 = {24'h0,_T_248};
  assign _T_259 = _T_250 ? _T_257 : _T_214;
  assign _T_260 = _T_242 ? _T_249 : _T_259;
  assign _T_261 = _T_234 ? _T_241 : _T_260;
  assign _T_262 = _T_226 ? _T_233 : _T_261;
  assign _T_264 = io_port_0_req_valid & io_port_0_req_bits_fcn;
  assign _T_270 = _T_226 | _T_234;
  assign _T_273 = _T_242 | _T_250;
  assign _T_277_0 = _T_340_0;
  assign _T_277_1 = _T_340_1;
  assign _T_277_2 = _T_340_2;
  assign _T_277_3 = _T_340_3;
  assign _T_279 = io_port_0_req_bits_data[7:0];
  assign _T_290_0 = _T_279;
  assign _T_290_1 = _T_279;
  assign _T_290_2 = _T_279;
  assign _T_290_3 = _T_279;
  assign _T_298 = io_port_0_req_bits_data[15:8];
  assign _T_308_0 = _T_279;
  assign _T_308_1 = _T_298;
  assign _T_308_2 = _T_279;
  assign _T_308_3 = _T_298;
  assign _T_317 = io_port_0_req_bits_data[23:16];
  assign _T_318 = io_port_0_req_bits_data[31:24];
  assign _T_326_0 = _T_279;
  assign _T_326_1 = _T_298;
  assign _T_326_2 = _T_317;
  assign _T_326_3 = _T_318;
  assign _T_333_0 = _T_270 ? _T_308_0 : _T_326_0;
  assign _T_333_1 = _T_270 ? _T_308_1 : _T_326_1;
  assign _T_333_2 = _T_270 ? _T_308_2 : _T_326_2;
  assign _T_333_3 = _T_270 ? _T_308_3 : _T_326_3;
  assign _T_340_0 = _T_273 ? _T_290_0 : _T_333_0;
  assign _T_340_1 = _T_273 ? _T_290_1 : _T_333_1;
  assign _T_340_2 = _T_273 ? _T_290_2 : _T_333_2;
  assign _T_340_3 = _T_273 ? _T_290_3 : _T_333_3;
  assign _T_356 = _T_273 ? 4'h1 : 4'hf;
  assign _T_357 = _T_270 ? 4'h3 : _T_356;
  assign _GEN_88 = {{3'd0}, _T_357};
  assign _T_358 = _GEN_88 << _T_194;
  assign _T_359 = _T_358[3:0];
  assign _T_360 = _T_359[0];
  assign _T_361 = _T_359[1];
  assign _T_362 = _T_359[2];
  assign _T_363 = _T_359[3];
  assign _GEN_12 = _T_264 ? _T_360 : 1'h0;
  assign _GEN_14 = _T_264 ? _T_361 : 1'h0;
  assign _GEN_16 = _T_264 ? _T_362 : 1'h0;
  assign _GEN_18 = _T_264 ? _T_363 : 1'h0;
  assign _T_367 = io_port_0_req_bits_fcn == 1'h0;
  assign _T_368 = io_port_0_req_valid & _T_367;
  assign _T_370 = _T_264 == 1'h0;
  assign _T_371 = _T_370 & _T_368;
  assign _GEN_19 = _T_371 ? _T_200 : _T_198;
  assign _T_375 = io_port_1_req_bits_addr[1:0];
  assign _T_377 = {_T_375,3'h0};
  assign _T_381 = io_port_1_req_bits_addr >> 2'h2;
  assign _T_385_0 = chipMem_0__T_390_data;
  assign _T_385_1 = chipMem_1__T_390_data;
  assign _T_385_2 = chipMem_2__T_390_data;
  assign _T_385_3 = chipMem_3__T_390_data;
  assign _T_388 = _T_432;
  assign _T_389 = _T_381[12:0];
  assign _T_392 = {_T_385_1,_T_385_0};
  assign _T_393 = {_T_385_3,_T_385_2};
  assign _T_394 = {_T_393,_T_392};
  assign _T_395 = _T_394 >> _T_377;
  assign _T_396 = io_port_1_req_bits_typ == 3'h2;
  assign _T_397 = _T_395[15];
  assign _T_401 = _T_397 ? 16'hffff : 16'h0;
  assign _T_402 = _T_395[15:0];
  assign _T_403 = {_T_401,_T_402};
  assign _T_404 = io_port_1_req_bits_typ == 3'h6;
  assign _T_411 = {16'h0,_T_402};
  assign _T_412 = io_port_1_req_bits_typ == 3'h1;
  assign _T_413 = _T_395[7];
  assign _T_417 = _T_413 ? 24'hffffff : 24'h0;
  assign _T_418 = _T_395[7:0];
  assign _T_419 = {_T_417,_T_418};
  assign _T_420 = io_port_1_req_bits_typ == 3'h5;
  assign _T_427 = {24'h0,_T_418};
  assign _T_429 = _T_420 ? _T_427 : _T_395;
  assign _T_430 = _T_412 ? _T_419 : _T_429;
  assign _T_431 = _T_404 ? _T_411 : _T_430;
  assign _T_432 = _T_396 ? _T_403 : _T_431;
  assign _T_434 = io_port_1_req_valid & io_port_1_req_bits_fcn;
  assign _T_440 = _T_396 | _T_404;
  assign _T_443 = _T_412 | _T_420;
  assign _T_447_0 = _T_510_0;
  assign _T_447_1 = _T_510_1;
  assign _T_447_2 = _T_510_2;
  assign _T_447_3 = _T_510_3;
  assign _T_449 = io_port_1_req_bits_data[7:0];
  assign _T_460_0 = _T_449;
  assign _T_460_1 = _T_449;
  assign _T_460_2 = _T_449;
  assign _T_460_3 = _T_449;
  assign _T_468 = io_port_1_req_bits_data[15:8];
  assign _T_478_0 = _T_449;
  assign _T_478_1 = _T_468;
  assign _T_478_2 = _T_449;
  assign _T_478_3 = _T_468;
  assign _T_487 = io_port_1_req_bits_data[23:16];
  assign _T_488 = io_port_1_req_bits_data[31:24];
  assign _T_496_0 = _T_449;
  assign _T_496_1 = _T_468;
  assign _T_496_2 = _T_487;
  assign _T_496_3 = _T_488;
  assign _T_503_0 = _T_440 ? _T_478_0 : _T_496_0;
  assign _T_503_1 = _T_440 ? _T_478_1 : _T_496_1;
  assign _T_503_2 = _T_440 ? _T_478_2 : _T_496_2;
  assign _T_503_3 = _T_440 ? _T_478_3 : _T_496_3;
  assign _T_510_0 = _T_443 ? _T_460_0 : _T_503_0;
  assign _T_510_1 = _T_443 ? _T_460_1 : _T_503_1;
  assign _T_510_2 = _T_443 ? _T_460_2 : _T_503_2;
  assign _T_510_3 = _T_443 ? _T_460_3 : _T_503_3;
  assign _T_526 = _T_443 ? 4'h1 : 4'hf;
  assign _T_527 = _T_440 ? 4'h3 : _T_526;
  assign _GEN_89 = {{3'd0}, _T_527};
  assign _T_528 = _GEN_89 << _T_375;
  assign _T_529 = _T_528[3:0];
  assign _T_530 = _T_529[0];
  assign _T_531 = _T_529[1];
  assign _T_532 = _T_529[2];
  assign _T_533 = _T_529[3];
  assign _GEN_32 = _T_434 ? _T_530 : 1'h0;
  assign _GEN_34 = _T_434 ? _T_531 : 1'h0;
  assign _GEN_36 = _T_434 ? _T_532 : 1'h0;
  assign _GEN_38 = _T_434 ? _T_533 : 1'h0;
  assign _T_537 = io_port_1_req_bits_fcn == 1'h0;
  assign _T_538 = io_port_1_req_valid & _T_537;
  assign _T_540 = _T_434 == 1'h0;
  assign _T_541 = _T_540 & _T_538;
  assign _GEN_39 = _T_541 ? _T_381 : _T_379;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _GEN_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    chipMem_0[initvar] = _GEN_0[7:0];
  `endif
  _GEN_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    chipMem_1[initvar] = _GEN_1[7:0];
  `endif
  _GEN_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    chipMem_2[initvar] = _GEN_2[7:0];
  `endif
  _GEN_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    chipMem_3[initvar] = _GEN_3[7:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_4 = {1{$random}};
  _T_192 = _GEN_4[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_5 = {1{$random}};
  _T_198 = _GEN_5[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_6 = {1{$random}};
  _T_373 = _GEN_6[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_7 = {1{$random}};
  _T_379 = _GEN_7[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if(chipMem_0__T_365_en & chipMem_0__T_365_mask) begin
      chipMem_0[chipMem_0__T_365_addr] <= chipMem_0__T_365_data;
    end
    if(chipMem_0__T_535_en & chipMem_0__T_535_mask) begin
      chipMem_0[chipMem_0__T_535_addr] <= chipMem_0__T_535_data;
    end
    if(chipMem_1__T_365_en & chipMem_1__T_365_mask) begin
      chipMem_1[chipMem_1__T_365_addr] <= chipMem_1__T_365_data;
    end
    if(chipMem_1__T_535_en & chipMem_1__T_535_mask) begin
      chipMem_1[chipMem_1__T_535_addr] <= chipMem_1__T_535_data;
    end
    if(chipMem_2__T_365_en & chipMem_2__T_365_mask) begin
      chipMem_2[chipMem_2__T_365_addr] <= chipMem_2__T_365_data;
    end
    if(chipMem_2__T_535_en & chipMem_2__T_535_mask) begin
      chipMem_2[chipMem_2__T_535_addr] <= chipMem_2__T_535_data;
    end
    if(chipMem_3__T_365_en & chipMem_3__T_365_mask) begin
      chipMem_3[chipMem_3__T_365_addr] <= chipMem_3__T_365_data;
    end
    if(chipMem_3__T_535_en & chipMem_3__T_535_mask) begin
      chipMem_3[chipMem_3__T_535_addr] <= chipMem_3__T_535_data;
    end
    if (reset) begin
      _T_192 <= 1'h0;
    end else begin
      _T_192 <= io_port_0_req_valid;
    end
    if (_T_371) begin
      _T_198 <= _T_200;
    end
    if (reset) begin
      _T_373 <= 1'h0;
    end else begin
      _T_373 <= io_port_1_req_valid;
    end
    if (_T_541) begin
      _T_379 <= _T_381;
    end
  end
endmodule
