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
  reg [7:0] chipMem_0_0 [0:4095];
  reg [31:0] _GEN_0;
  wire [7:0] chipMem_0_0__T_214_data;
  wire [11:0] chipMem_0_0__T_214_addr;
  wire [7:0] chipMem_0_0__T_370_data;
  wire [11:0] chipMem_0_0__T_370_addr;
  wire  chipMem_0_0__T_370_mask;
  wire  chipMem_0_0__T_370_en;
  reg [7:0] chipMem_0_1 [0:4095];
  reg [31:0] _GEN_1;
  wire [7:0] chipMem_0_1__T_214_data;
  wire [11:0] chipMem_0_1__T_214_addr;
  wire [7:0] chipMem_0_1__T_370_data;
  wire [11:0] chipMem_0_1__T_370_addr;
  wire  chipMem_0_1__T_370_mask;
  wire  chipMem_0_1__T_370_en;
  reg [7:0] chipMem_0_2 [0:4095];
  reg [31:0] _GEN_2;
  wire [7:0] chipMem_0_2__T_214_data;
  wire [11:0] chipMem_0_2__T_214_addr;
  wire [7:0] chipMem_0_2__T_370_data;
  wire [11:0] chipMem_0_2__T_370_addr;
  wire  chipMem_0_2__T_370_mask;
  wire  chipMem_0_2__T_370_en;
  reg [7:0] chipMem_0_3 [0:4095];
  reg [31:0] _GEN_3;
  wire [7:0] chipMem_0_3__T_214_data;
  wire [11:0] chipMem_0_3__T_214_addr;
  wire [7:0] chipMem_0_3__T_370_data;
  wire [11:0] chipMem_0_3__T_370_addr;
  wire  chipMem_0_3__T_370_mask;
  wire  chipMem_0_3__T_370_en;
  reg [7:0] chipMem_1_0 [0:4095];
  reg [31:0] _GEN_4;
  wire [7:0] chipMem_1_0__T_395_data;
  wire [11:0] chipMem_1_0__T_395_addr;
  wire [7:0] chipMem_1_0__T_540_data;
  wire [11:0] chipMem_1_0__T_540_addr;
  wire  chipMem_1_0__T_540_mask;
  wire  chipMem_1_0__T_540_en;
  reg [7:0] chipMem_1_1 [0:4095];
  reg [31:0] _GEN_5;
  wire [7:0] chipMem_1_1__T_395_data;
  wire [11:0] chipMem_1_1__T_395_addr;
  wire [7:0] chipMem_1_1__T_540_data;
  wire [11:0] chipMem_1_1__T_540_addr;
  wire  chipMem_1_1__T_540_mask;
  wire  chipMem_1_1__T_540_en;
  reg [7:0] chipMem_1_2 [0:4095];
  reg [31:0] _GEN_6;
  wire [7:0] chipMem_1_2__T_395_data;
  wire [11:0] chipMem_1_2__T_395_addr;
  wire [7:0] chipMem_1_2__T_540_data;
  wire [11:0] chipMem_1_2__T_540_addr;
  wire  chipMem_1_2__T_540_mask;
  wire  chipMem_1_2__T_540_en;
  reg [7:0] chipMem_1_3 [0:4095];
  reg [31:0] _GEN_7;
  wire [7:0] chipMem_1_3__T_395_data;
  wire [11:0] chipMem_1_3__T_395_addr;
  wire [7:0] chipMem_1_3__T_540_data;
  wire [11:0] chipMem_1_3__T_540_addr;
  wire  chipMem_1_3__T_540_mask;
  wire  chipMem_1_3__T_540_en;
  reg  _T_197;
  reg [31:0] _GEN_8;
  wire [1:0] _T_199;
  wire [4:0] _T_201;
  reg [31:0] _T_203;
  reg [31:0] _GEN_9;
  wire [31:0] _T_205;
  wire [7:0] _T_209_0;
  wire [7:0] _T_209_1;
  wire [7:0] _T_209_2;
  wire [7:0] _T_209_3;
  wire [31:0] _T_212;
  wire [11:0] _T_213;
  wire [15:0] _T_216;
  wire [15:0] _T_217;
  wire [31:0] _T_218;
  wire [31:0] _T_219;
  wire  _T_231;
  wire  _T_232;
  wire [15:0] _T_236;
  wire [15:0] _T_237;
  wire [31:0] _T_238;
  wire  _T_239;
  wire [31:0] _T_246;
  wire  _T_247;
  wire  _T_248;
  wire [23:0] _T_252;
  wire [7:0] _T_253;
  wire [31:0] _T_254;
  wire  _T_255;
  wire [31:0] _T_262;
  wire [31:0] _T_264;
  wire [31:0] _T_265;
  wire [31:0] _T_266;
  wire [31:0] _T_267;
  wire  _T_269;
  wire  _T_275;
  wire  _T_278;
  wire [7:0] _T_282_0;
  wire [7:0] _T_282_1;
  wire [7:0] _T_282_2;
  wire [7:0] _T_282_3;
  wire [7:0] _T_284;
  wire [7:0] _T_295_0;
  wire [7:0] _T_295_1;
  wire [7:0] _T_295_2;
  wire [7:0] _T_295_3;
  wire [7:0] _T_303;
  wire [7:0] _T_313_0;
  wire [7:0] _T_313_1;
  wire [7:0] _T_313_2;
  wire [7:0] _T_313_3;
  wire [7:0] _T_322;
  wire [7:0] _T_323;
  wire [7:0] _T_331_0;
  wire [7:0] _T_331_1;
  wire [7:0] _T_331_2;
  wire [7:0] _T_331_3;
  wire [7:0] _T_338_0;
  wire [7:0] _T_338_1;
  wire [7:0] _T_338_2;
  wire [7:0] _T_338_3;
  wire [7:0] _T_345_0;
  wire [7:0] _T_345_1;
  wire [7:0] _T_345_2;
  wire [7:0] _T_345_3;
  wire [3:0] _T_361;
  wire [3:0] _T_362;
  wire [6:0] _GEN_88;
  wire [6:0] _T_363;
  wire [3:0] _T_364;
  wire  _T_365;
  wire  _T_366;
  wire  _T_367;
  wire  _T_368;
  wire  _GEN_12;
  wire  _GEN_14;
  wire  _GEN_16;
  wire  _GEN_18;
  wire  _T_372;
  wire  _T_373;
  wire  _T_375;
  wire  _T_376;
  wire [31:0] _GEN_19;
  reg  _T_378;
  reg [31:0] _GEN_10;
  wire [1:0] _T_380;
  wire [4:0] _T_382;
  reg [31:0] _T_384;
  reg [31:0] _GEN_11;
  wire [31:0] _T_386;
  wire [7:0] _T_390_0;
  wire [7:0] _T_390_1;
  wire [7:0] _T_390_2;
  wire [7:0] _T_390_3;
  wire [31:0] _T_393;
  wire [11:0] _T_394;
  wire [15:0] _T_397;
  wire [15:0] _T_398;
  wire [31:0] _T_399;
  wire [31:0] _T_400;
  wire  _T_401;
  wire  _T_402;
  wire [15:0] _T_406;
  wire [15:0] _T_407;
  wire [31:0] _T_408;
  wire  _T_409;
  wire [31:0] _T_416;
  wire  _T_417;
  wire  _T_418;
  wire [23:0] _T_422;
  wire [7:0] _T_423;
  wire [31:0] _T_424;
  wire  _T_425;
  wire [31:0] _T_432;
  wire [31:0] _T_434;
  wire [31:0] _T_435;
  wire [31:0] _T_436;
  wire [31:0] _T_437;
  wire  _T_439;
  wire  _T_445;
  wire  _T_448;
  wire [7:0] _T_452_0;
  wire [7:0] _T_452_1;
  wire [7:0] _T_452_2;
  wire [7:0] _T_452_3;
  wire [7:0] _T_454;
  wire [7:0] _T_465_0;
  wire [7:0] _T_465_1;
  wire [7:0] _T_465_2;
  wire [7:0] _T_465_3;
  wire [7:0] _T_473;
  wire [7:0] _T_483_0;
  wire [7:0] _T_483_1;
  wire [7:0] _T_483_2;
  wire [7:0] _T_483_3;
  wire [7:0] _T_492;
  wire [7:0] _T_493;
  wire [7:0] _T_501_0;
  wire [7:0] _T_501_1;
  wire [7:0] _T_501_2;
  wire [7:0] _T_501_3;
  wire [7:0] _T_508_0;
  wire [7:0] _T_508_1;
  wire [7:0] _T_508_2;
  wire [7:0] _T_508_3;
  wire [7:0] _T_515_0;
  wire [7:0] _T_515_1;
  wire [7:0] _T_515_2;
  wire [7:0] _T_515_3;
  wire [3:0] _T_531;
  wire [3:0] _T_532;
  wire [6:0] _GEN_89;
  wire [6:0] _T_533;
  wire [3:0] _T_534;
  wire  _T_535;
  wire  _T_536;
  wire  _T_537;
  wire  _T_538;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire  _GEN_38;
  wire  _T_542;
  wire  _T_543;
  wire  _T_545;
  wire  _T_546;
  wire [31:0] _GEN_39;
  assign io_port_0_req_ready = 1'h1;
  assign io_port_0_resp_valid = _T_197;
  assign io_port_0_resp_bits_data = _T_212;
  assign io_port_1_req_ready = 1'h1;
  assign io_port_1_resp_valid = _T_378;
  assign io_port_1_resp_bits_data = _T_393;
  assign chipMem_0_0__T_214_addr = _T_213;
  assign chipMem_0_0__T_214_data = chipMem_0_0[chipMem_0_0__T_214_addr];
  assign chipMem_0_0__T_370_data = _T_282_0;
  assign chipMem_0_0__T_370_addr = _T_213;
  assign chipMem_0_0__T_370_mask = _GEN_12;
  assign chipMem_0_0__T_370_en = _T_269;
  assign chipMem_0_1__T_214_addr = _T_213;
  assign chipMem_0_1__T_214_data = chipMem_0_1[chipMem_0_1__T_214_addr];
  assign chipMem_0_1__T_370_data = _T_282_1;
  assign chipMem_0_1__T_370_addr = _T_213;
  assign chipMem_0_1__T_370_mask = _GEN_14;
  assign chipMem_0_1__T_370_en = _T_269;
  assign chipMem_0_2__T_214_addr = _T_213;
  assign chipMem_0_2__T_214_data = chipMem_0_2[chipMem_0_2__T_214_addr];
  assign chipMem_0_2__T_370_data = _T_282_2;
  assign chipMem_0_2__T_370_addr = _T_213;
  assign chipMem_0_2__T_370_mask = _GEN_16;
  assign chipMem_0_2__T_370_en = _T_269;
  assign chipMem_0_3__T_214_addr = _T_213;
  assign chipMem_0_3__T_214_data = chipMem_0_3[chipMem_0_3__T_214_addr];
  assign chipMem_0_3__T_370_data = _T_282_3;
  assign chipMem_0_3__T_370_addr = _T_213;
  assign chipMem_0_3__T_370_mask = _GEN_18;
  assign chipMem_0_3__T_370_en = _T_269;
  assign chipMem_1_0__T_395_addr = _T_394;
  assign chipMem_1_0__T_395_data = chipMem_1_0[chipMem_1_0__T_395_addr];
  assign chipMem_1_0__T_540_data = _T_452_0;
  assign chipMem_1_0__T_540_addr = _T_394;
  assign chipMem_1_0__T_540_mask = _GEN_32;
  assign chipMem_1_0__T_540_en = _T_439;
  assign chipMem_1_1__T_395_addr = _T_394;
  assign chipMem_1_1__T_395_data = chipMem_1_1[chipMem_1_1__T_395_addr];
  assign chipMem_1_1__T_540_data = _T_452_1;
  assign chipMem_1_1__T_540_addr = _T_394;
  assign chipMem_1_1__T_540_mask = _GEN_34;
  assign chipMem_1_1__T_540_en = _T_439;
  assign chipMem_1_2__T_395_addr = _T_394;
  assign chipMem_1_2__T_395_data = chipMem_1_2[chipMem_1_2__T_395_addr];
  assign chipMem_1_2__T_540_data = _T_452_2;
  assign chipMem_1_2__T_540_addr = _T_394;
  assign chipMem_1_2__T_540_mask = _GEN_36;
  assign chipMem_1_2__T_540_en = _T_439;
  assign chipMem_1_3__T_395_addr = _T_394;
  assign chipMem_1_3__T_395_data = chipMem_1_3[chipMem_1_3__T_395_addr];
  assign chipMem_1_3__T_540_data = _T_452_3;
  assign chipMem_1_3__T_540_addr = _T_394;
  assign chipMem_1_3__T_540_mask = _GEN_38;
  assign chipMem_1_3__T_540_en = _T_439;
  assign _T_199 = io_port_0_req_bits_addr[1:0];
  assign _T_201 = {_T_199,3'h0};
  assign _T_205 = io_port_0_req_bits_addr >> 2'h2;
  assign _T_209_0 = chipMem_0_0__T_214_data;
  assign _T_209_1 = chipMem_0_1__T_214_data;
  assign _T_209_2 = chipMem_0_2__T_214_data;
  assign _T_209_3 = chipMem_0_3__T_214_data;
  assign _T_212 = _T_267;
  assign _T_213 = _T_205[11:0];
  assign _T_216 = {_T_209_1,_T_209_0};
  assign _T_217 = {_T_209_3,_T_209_2};
  assign _T_218 = {_T_217,_T_216};
  assign _T_219 = _T_218 >> _T_201;
  assign _T_231 = io_port_0_req_bits_typ == 3'h1;
  assign _T_232 = _T_219[15];
  assign _T_236 = _T_232 ? 16'hffff : 16'h0;
  assign _T_237 = _T_219[15:0];
  assign _T_238 = {_T_236,_T_237};
  assign _T_239 = io_port_0_req_bits_typ == 3'h5;
  assign _T_246 = {16'h0,_T_237};
  assign _T_247 = io_port_0_req_bits_typ == 3'h0;
  assign _T_248 = _T_219[7];
  assign _T_252 = _T_248 ? 24'hffffff : 24'h0;
  assign _T_253 = _T_219[7:0];
  assign _T_254 = {_T_252,_T_253};
  assign _T_255 = io_port_0_req_bits_typ == 3'h4;
  assign _T_262 = {24'h0,_T_253};
  assign _T_264 = _T_255 ? _T_262 : _T_219;
  assign _T_265 = _T_247 ? _T_254 : _T_264;
  assign _T_266 = _T_239 ? _T_246 : _T_265;
  assign _T_267 = _T_231 ? _T_238 : _T_266;
  assign _T_269 = io_port_0_req_valid & io_port_0_req_bits_fcn;
  assign _T_275 = _T_231 | _T_239;
  assign _T_278 = _T_247 | _T_255;
  assign _T_282_0 = _T_345_0;
  assign _T_282_1 = _T_345_1;
  assign _T_282_2 = _T_345_2;
  assign _T_282_3 = _T_345_3;
  assign _T_284 = io_port_0_req_bits_data[7:0];
  assign _T_295_0 = _T_284;
  assign _T_295_1 = _T_284;
  assign _T_295_2 = _T_284;
  assign _T_295_3 = _T_284;
  assign _T_303 = io_port_0_req_bits_data[15:8];
  assign _T_313_0 = _T_284;
  assign _T_313_1 = _T_303;
  assign _T_313_2 = _T_284;
  assign _T_313_3 = _T_303;
  assign _T_322 = io_port_0_req_bits_data[23:16];
  assign _T_323 = io_port_0_req_bits_data[31:24];
  assign _T_331_0 = _T_284;
  assign _T_331_1 = _T_303;
  assign _T_331_2 = _T_322;
  assign _T_331_3 = _T_323;
  assign _T_338_0 = _T_275 ? _T_313_0 : _T_331_0;
  assign _T_338_1 = _T_275 ? _T_313_1 : _T_331_1;
  assign _T_338_2 = _T_275 ? _T_313_2 : _T_331_2;
  assign _T_338_3 = _T_275 ? _T_313_3 : _T_331_3;
  assign _T_345_0 = _T_278 ? _T_295_0 : _T_338_0;
  assign _T_345_1 = _T_278 ? _T_295_1 : _T_338_1;
  assign _T_345_2 = _T_278 ? _T_295_2 : _T_338_2;
  assign _T_345_3 = _T_278 ? _T_295_3 : _T_338_3;
  assign _T_361 = _T_278 ? 4'h1 : 4'hf;
  assign _T_362 = _T_275 ? 4'h3 : _T_361;
  assign _GEN_88 = {{3'd0}, _T_362};
  assign _T_363 = _GEN_88 << _T_199;
  assign _T_364 = _T_363[3:0];
  assign _T_365 = _T_364[0];
  assign _T_366 = _T_364[1];
  assign _T_367 = _T_364[2];
  assign _T_368 = _T_364[3];
  assign _GEN_12 = _T_269 ? _T_365 : 1'h0;
  assign _GEN_14 = _T_269 ? _T_366 : 1'h0;
  assign _GEN_16 = _T_269 ? _T_367 : 1'h0;
  assign _GEN_18 = _T_269 ? _T_368 : 1'h0;
  assign _T_372 = io_port_0_req_bits_fcn == 1'h0;
  assign _T_373 = io_port_0_req_valid & _T_372;
  assign _T_375 = _T_269 == 1'h0;
  assign _T_376 = _T_375 & _T_373;
  assign _GEN_19 = _T_376 ? _T_205 : _T_203;
  assign _T_380 = io_port_1_req_bits_addr[1:0];
  assign _T_382 = {_T_380,3'h0};
  assign _T_386 = io_port_1_req_bits_addr >> 2'h2;
  assign _T_390_0 = chipMem_1_0__T_395_data;
  assign _T_390_1 = chipMem_1_1__T_395_data;
  assign _T_390_2 = chipMem_1_2__T_395_data;
  assign _T_390_3 = chipMem_1_3__T_395_data;
  assign _T_393 = _T_437;
  assign _T_394 = _T_386[11:0];
  assign _T_397 = {_T_390_1,_T_390_0};
  assign _T_398 = {_T_390_3,_T_390_2};
  assign _T_399 = {_T_398,_T_397};
  assign _T_400 = _T_399 >> _T_382;
  assign _T_401 = io_port_1_req_bits_typ == 3'h1;
  assign _T_402 = _T_400[15];
  assign _T_406 = _T_402 ? 16'hffff : 16'h0;
  assign _T_407 = _T_400[15:0];
  assign _T_408 = {_T_406,_T_407};
  assign _T_409 = io_port_1_req_bits_typ == 3'h5;
  assign _T_416 = {16'h0,_T_407};
  assign _T_417 = io_port_1_req_bits_typ == 3'h0;
  assign _T_418 = _T_400[7];
  assign _T_422 = _T_418 ? 24'hffffff : 24'h0;
  assign _T_423 = _T_400[7:0];
  assign _T_424 = {_T_422,_T_423};
  assign _T_425 = io_port_1_req_bits_typ == 3'h4;
  assign _T_432 = {24'h0,_T_423};
  assign _T_434 = _T_425 ? _T_432 : _T_400;
  assign _T_435 = _T_417 ? _T_424 : _T_434;
  assign _T_436 = _T_409 ? _T_416 : _T_435;
  assign _T_437 = _T_401 ? _T_408 : _T_436;
  assign _T_439 = io_port_1_req_valid & io_port_1_req_bits_fcn;
  assign _T_445 = _T_401 | _T_409;
  assign _T_448 = _T_417 | _T_425;
  assign _T_452_0 = _T_515_0;
  assign _T_452_1 = _T_515_1;
  assign _T_452_2 = _T_515_2;
  assign _T_452_3 = _T_515_3;
  assign _T_454 = io_port_1_req_bits_data[7:0];
  assign _T_465_0 = _T_454;
  assign _T_465_1 = _T_454;
  assign _T_465_2 = _T_454;
  assign _T_465_3 = _T_454;
  assign _T_473 = io_port_1_req_bits_data[15:8];
  assign _T_483_0 = _T_454;
  assign _T_483_1 = _T_473;
  assign _T_483_2 = _T_454;
  assign _T_483_3 = _T_473;
  assign _T_492 = io_port_1_req_bits_data[23:16];
  assign _T_493 = io_port_1_req_bits_data[31:24];
  assign _T_501_0 = _T_454;
  assign _T_501_1 = _T_473;
  assign _T_501_2 = _T_492;
  assign _T_501_3 = _T_493;
  assign _T_508_0 = _T_445 ? _T_483_0 : _T_501_0;
  assign _T_508_1 = _T_445 ? _T_483_1 : _T_501_1;
  assign _T_508_2 = _T_445 ? _T_483_2 : _T_501_2;
  assign _T_508_3 = _T_445 ? _T_483_3 : _T_501_3;
  assign _T_515_0 = _T_448 ? _T_465_0 : _T_508_0;
  assign _T_515_1 = _T_448 ? _T_465_1 : _T_508_1;
  assign _T_515_2 = _T_448 ? _T_465_2 : _T_508_2;
  assign _T_515_3 = _T_448 ? _T_465_3 : _T_508_3;
  assign _T_531 = _T_448 ? 4'h1 : 4'hf;
  assign _T_532 = _T_445 ? 4'h3 : _T_531;
  assign _GEN_89 = {{3'd0}, _T_532};
  assign _T_533 = _GEN_89 << _T_380;
  assign _T_534 = _T_533[3:0];
  assign _T_535 = _T_534[0];
  assign _T_536 = _T_534[1];
  assign _T_537 = _T_534[2];
  assign _T_538 = _T_534[3];
  assign _GEN_32 = _T_439 ? _T_535 : 1'h0;
  assign _GEN_34 = _T_439 ? _T_536 : 1'h0;
  assign _GEN_36 = _T_439 ? _T_537 : 1'h0;
  assign _GEN_38 = _T_439 ? _T_538 : 1'h0;
  assign _T_542 = io_port_1_req_bits_fcn == 1'h0;
  assign _T_543 = io_port_1_req_valid & _T_542;
  assign _T_545 = _T_439 == 1'h0;
  assign _T_546 = _T_545 & _T_543;
  assign _GEN_39 = _T_546 ? _T_386 : _T_384;
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
  _T_197 = _GEN_8[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_9 = {1{$random}};
  _T_203 = _GEN_9[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_10 = {1{$random}};
  _T_378 = _GEN_10[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_11 = {1{$random}};
  _T_384 = _GEN_11[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if(chipMem_0_0__T_370_en & chipMem_0_0__T_370_mask) begin
      chipMem_0_0[chipMem_0_0__T_370_addr] <= chipMem_0_0__T_370_data;
    end
    if(chipMem_0_1__T_370_en & chipMem_0_1__T_370_mask) begin
      chipMem_0_1[chipMem_0_1__T_370_addr] <= chipMem_0_1__T_370_data;
    end
    if(chipMem_0_2__T_370_en & chipMem_0_2__T_370_mask) begin
      chipMem_0_2[chipMem_0_2__T_370_addr] <= chipMem_0_2__T_370_data;
    end
    if(chipMem_0_3__T_370_en & chipMem_0_3__T_370_mask) begin
      chipMem_0_3[chipMem_0_3__T_370_addr] <= chipMem_0_3__T_370_data;
    end
    if(chipMem_1_0__T_540_en & chipMem_1_0__T_540_mask) begin
      chipMem_1_0[chipMem_1_0__T_540_addr] <= chipMem_1_0__T_540_data;
    end
    if(chipMem_1_1__T_540_en & chipMem_1_1__T_540_mask) begin
      chipMem_1_1[chipMem_1_1__T_540_addr] <= chipMem_1_1__T_540_data;
    end
    if(chipMem_1_2__T_540_en & chipMem_1_2__T_540_mask) begin
      chipMem_1_2[chipMem_1_2__T_540_addr] <= chipMem_1_2__T_540_data;
    end
    if(chipMem_1_3__T_540_en & chipMem_1_3__T_540_mask) begin
      chipMem_1_3[chipMem_1_3__T_540_addr] <= chipMem_1_3__T_540_data;
    end
    if (reset) begin
      _T_197 <= 1'h0;
    end else begin
      _T_197 <= io_port_0_req_valid;
    end
    if (_T_376) begin
      _T_203 <= _T_205;
    end
    if (reset) begin
      _T_378 <= 1'h0;
    end else begin
      _T_378 <= io_port_1_req_valid;
    end
    if (_T_546) begin
      _T_384 <= _T_386;
    end
  end
endmodule
