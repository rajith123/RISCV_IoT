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
  wire [7:0] chipMem_0__T_214_data;
  wire [12:0] chipMem_0__T_214_addr;
  wire [7:0] chipMem_0__T_400_data;
  wire [12:0] chipMem_0__T_400_addr;
  wire [7:0] chipMem_0__T_370_data;
  wire [12:0] chipMem_0__T_370_addr;
  wire  chipMem_0__T_370_mask;
  wire  chipMem_0__T_370_en;
  wire [7:0] chipMem_0__T_545_data;
  wire [12:0] chipMem_0__T_545_addr;
  wire  chipMem_0__T_545_mask;
  wire  chipMem_0__T_545_en;
  reg [7:0] chipMem_1 [0:8191];
  reg [31:0] _GEN_1;
  wire [7:0] chipMem_1__T_214_data;
  wire [12:0] chipMem_1__T_214_addr;
  wire [7:0] chipMem_1__T_400_data;
  wire [12:0] chipMem_1__T_400_addr;
  wire [7:0] chipMem_1__T_370_data;
  wire [12:0] chipMem_1__T_370_addr;
  wire  chipMem_1__T_370_mask;
  wire  chipMem_1__T_370_en;
  wire [7:0] chipMem_1__T_545_data;
  wire [12:0] chipMem_1__T_545_addr;
  wire  chipMem_1__T_545_mask;
  wire  chipMem_1__T_545_en;
  reg [7:0] chipMem_2 [0:8191];
  reg [31:0] _GEN_2;
  wire [7:0] chipMem_2__T_214_data;
  wire [12:0] chipMem_2__T_214_addr;
  wire [7:0] chipMem_2__T_400_data;
  wire [12:0] chipMem_2__T_400_addr;
  wire [7:0] chipMem_2__T_370_data;
  wire [12:0] chipMem_2__T_370_addr;
  wire  chipMem_2__T_370_mask;
  wire  chipMem_2__T_370_en;
  wire [7:0] chipMem_2__T_545_data;
  wire [12:0] chipMem_2__T_545_addr;
  wire  chipMem_2__T_545_mask;
  wire  chipMem_2__T_545_en;
  reg [7:0] chipMem_3 [0:8191];
  reg [31:0] _GEN_3;
  wire [7:0] chipMem_3__T_214_data;
  wire [12:0] chipMem_3__T_214_addr;
  wire [7:0] chipMem_3__T_400_data;
  wire [12:0] chipMem_3__T_400_addr;
  wire [7:0] chipMem_3__T_370_data;
  wire [12:0] chipMem_3__T_370_addr;
  wire  chipMem_3__T_370_mask;
  wire  chipMem_3__T_370_en;
  wire [7:0] chipMem_3__T_545_data;
  wire [12:0] chipMem_3__T_545_addr;
  wire  chipMem_3__T_545_mask;
  wire  chipMem_3__T_545_en;
  reg  _T_192;
  reg [31:0] _GEN_4;
  wire [16:0] _T_194;
  wire [13:0] _T_196;
  wire [17:0] _T_197;
  wire [31:0] _T_198;
  wire [1:0] _T_199;
  wire [4:0] _T_201;
  reg [31:0] _T_203;
  reg [31:0] _GEN_5;
  wire [31:0] _T_205;
  wire [7:0] _T_209_0;
  wire [7:0] _T_209_1;
  wire [7:0] _T_209_2;
  wire [7:0] _T_209_3;
  wire [31:0] _T_212;
  wire [12:0] _T_213;
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
  reg [31:0] _GEN_6;
  wire [16:0] _T_380;
  wire [13:0] _T_382;
  wire [17:0] _T_383;
  wire [31:0] _T_384;
  wire [1:0] _T_385;
  wire [4:0] _T_387;
  reg [31:0] _T_389;
  reg [31:0] _GEN_7;
  wire [31:0] _T_391;
  wire [7:0] _T_395_0;
  wire [7:0] _T_395_1;
  wire [7:0] _T_395_2;
  wire [7:0] _T_395_3;
  wire [31:0] _T_398;
  wire [12:0] _T_399;
  wire [15:0] _T_402;
  wire [15:0] _T_403;
  wire [31:0] _T_404;
  wire [31:0] _T_405;
  wire  _T_406;
  wire  _T_407;
  wire [15:0] _T_411;
  wire [15:0] _T_412;
  wire [31:0] _T_413;
  wire  _T_414;
  wire [31:0] _T_421;
  wire  _T_422;
  wire  _T_423;
  wire [23:0] _T_427;
  wire [7:0] _T_428;
  wire [31:0] _T_429;
  wire  _T_430;
  wire [31:0] _T_437;
  wire [31:0] _T_439;
  wire [31:0] _T_440;
  wire [31:0] _T_441;
  wire [31:0] _T_442;
  wire  _T_444;
  wire  _T_450;
  wire  _T_453;
  wire [7:0] _T_457_0;
  wire [7:0] _T_457_1;
  wire [7:0] _T_457_2;
  wire [7:0] _T_457_3;
  wire [7:0] _T_459;
  wire [7:0] _T_470_0;
  wire [7:0] _T_470_1;
  wire [7:0] _T_470_2;
  wire [7:0] _T_470_3;
  wire [7:0] _T_478;
  wire [7:0] _T_488_0;
  wire [7:0] _T_488_1;
  wire [7:0] _T_488_2;
  wire [7:0] _T_488_3;
  wire [7:0] _T_497;
  wire [7:0] _T_498;
  wire [7:0] _T_506_0;
  wire [7:0] _T_506_1;
  wire [7:0] _T_506_2;
  wire [7:0] _T_506_3;
  wire [7:0] _T_513_0;
  wire [7:0] _T_513_1;
  wire [7:0] _T_513_2;
  wire [7:0] _T_513_3;
  wire [7:0] _T_520_0;
  wire [7:0] _T_520_1;
  wire [7:0] _T_520_2;
  wire [7:0] _T_520_3;
  wire [3:0] _T_536;
  wire [3:0] _T_537;
  wire [6:0] _GEN_89;
  wire [6:0] _T_538;
  wire [3:0] _T_539;
  wire  _T_540;
  wire  _T_541;
  wire  _T_542;
  wire  _T_543;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire  _GEN_38;
  wire  _T_547;
  wire  _T_548;
  wire  _T_550;
  wire  _T_551;
  wire [31:0] _GEN_39;
  assign io_port_0_req_ready = 1'h1;
  assign io_port_0_resp_valid = _T_192;
  assign io_port_0_resp_bits_data = _T_212;
  assign io_port_1_req_ready = 1'h1;
  assign io_port_1_resp_valid = _T_378;
  assign io_port_1_resp_bits_data = _T_398;
  assign chipMem_0__T_214_addr = _T_213;
  assign chipMem_0__T_214_data = chipMem_0[chipMem_0__T_214_addr];
  assign chipMem_0__T_400_addr = _T_399;
  assign chipMem_0__T_400_data = chipMem_0[chipMem_0__T_400_addr];
  assign chipMem_0__T_370_data = _T_282_0;
  assign chipMem_0__T_370_addr = _T_213;
  assign chipMem_0__T_370_mask = _GEN_12;
  assign chipMem_0__T_370_en = _T_269;
  assign chipMem_0__T_545_data = _T_457_0;
  assign chipMem_0__T_545_addr = _T_399;
  assign chipMem_0__T_545_mask = _GEN_32;
  assign chipMem_0__T_545_en = _T_444;
  assign chipMem_1__T_214_addr = _T_213;
  assign chipMem_1__T_214_data = chipMem_1[chipMem_1__T_214_addr];
  assign chipMem_1__T_400_addr = _T_399;
  assign chipMem_1__T_400_data = chipMem_1[chipMem_1__T_400_addr];
  assign chipMem_1__T_370_data = _T_282_1;
  assign chipMem_1__T_370_addr = _T_213;
  assign chipMem_1__T_370_mask = _GEN_14;
  assign chipMem_1__T_370_en = _T_269;
  assign chipMem_1__T_545_data = _T_457_1;
  assign chipMem_1__T_545_addr = _T_399;
  assign chipMem_1__T_545_mask = _GEN_34;
  assign chipMem_1__T_545_en = _T_444;
  assign chipMem_2__T_214_addr = _T_213;
  assign chipMem_2__T_214_data = chipMem_2[chipMem_2__T_214_addr];
  assign chipMem_2__T_400_addr = _T_399;
  assign chipMem_2__T_400_data = chipMem_2[chipMem_2__T_400_addr];
  assign chipMem_2__T_370_data = _T_282_2;
  assign chipMem_2__T_370_addr = _T_213;
  assign chipMem_2__T_370_mask = _GEN_16;
  assign chipMem_2__T_370_en = _T_269;
  assign chipMem_2__T_545_data = _T_457_2;
  assign chipMem_2__T_545_addr = _T_399;
  assign chipMem_2__T_545_mask = _GEN_36;
  assign chipMem_2__T_545_en = _T_444;
  assign chipMem_3__T_214_addr = _T_213;
  assign chipMem_3__T_214_data = chipMem_3[chipMem_3__T_214_addr];
  assign chipMem_3__T_400_addr = _T_399;
  assign chipMem_3__T_400_data = chipMem_3[chipMem_3__T_400_addr];
  assign chipMem_3__T_370_data = _T_282_3;
  assign chipMem_3__T_370_addr = _T_213;
  assign chipMem_3__T_370_mask = _GEN_18;
  assign chipMem_3__T_370_en = _T_269;
  assign chipMem_3__T_545_data = _T_457_3;
  assign chipMem_3__T_545_addr = _T_399;
  assign chipMem_3__T_545_mask = _GEN_38;
  assign chipMem_3__T_545_en = _T_444;
  assign _T_194 = io_port_0_req_bits_addr[31:15];
  assign _T_196 = io_port_0_req_bits_addr[13:0];
  assign _T_197 = {_T_194,1'h0};
  assign _T_198 = {_T_197,_T_196};
  assign _T_199 = io_port_0_req_bits_addr[1:0];
  assign _T_201 = {_T_199,3'h0};
  assign _T_205 = _T_198 >> 2'h2;
  assign _T_209_0 = chipMem_0__T_214_data;
  assign _T_209_1 = chipMem_1__T_214_data;
  assign _T_209_2 = chipMem_2__T_214_data;
  assign _T_209_3 = chipMem_3__T_214_data;
  assign _T_212 = _T_267;
  assign _T_213 = _T_205[12:0];
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
  assign _T_380 = io_port_1_req_bits_addr[31:15];
  assign _T_382 = io_port_1_req_bits_addr[13:0];
  assign _T_383 = {_T_380,1'h1};
  assign _T_384 = {_T_383,_T_382};
  assign _T_385 = io_port_1_req_bits_addr[1:0];
  assign _T_387 = {_T_385,3'h0};
  assign _T_391 = _T_384 >> 2'h2;
  assign _T_395_0 = chipMem_0__T_400_data;
  assign _T_395_1 = chipMem_1__T_400_data;
  assign _T_395_2 = chipMem_2__T_400_data;
  assign _T_395_3 = chipMem_3__T_400_data;
  assign _T_398 = _T_442;
  assign _T_399 = _T_391[12:0];
  assign _T_402 = {_T_395_1,_T_395_0};
  assign _T_403 = {_T_395_3,_T_395_2};
  assign _T_404 = {_T_403,_T_402};
  assign _T_405 = _T_404 >> _T_387;
  assign _T_406 = io_port_1_req_bits_typ == 3'h1;
  assign _T_407 = _T_405[15];
  assign _T_411 = _T_407 ? 16'hffff : 16'h0;
  assign _T_412 = _T_405[15:0];
  assign _T_413 = {_T_411,_T_412};
  assign _T_414 = io_port_1_req_bits_typ == 3'h5;
  assign _T_421 = {16'h0,_T_412};
  assign _T_422 = io_port_1_req_bits_typ == 3'h0;
  assign _T_423 = _T_405[7];
  assign _T_427 = _T_423 ? 24'hffffff : 24'h0;
  assign _T_428 = _T_405[7:0];
  assign _T_429 = {_T_427,_T_428};
  assign _T_430 = io_port_1_req_bits_typ == 3'h4;
  assign _T_437 = {24'h0,_T_428};
  assign _T_439 = _T_430 ? _T_437 : _T_405;
  assign _T_440 = _T_422 ? _T_429 : _T_439;
  assign _T_441 = _T_414 ? _T_421 : _T_440;
  assign _T_442 = _T_406 ? _T_413 : _T_441;
  assign _T_444 = io_port_1_req_valid & io_port_1_req_bits_fcn;
  assign _T_450 = _T_406 | _T_414;
  assign _T_453 = _T_422 | _T_430;
  assign _T_457_0 = _T_520_0;
  assign _T_457_1 = _T_520_1;
  assign _T_457_2 = _T_520_2;
  assign _T_457_3 = _T_520_3;
  assign _T_459 = io_port_1_req_bits_data[7:0];
  assign _T_470_0 = _T_459;
  assign _T_470_1 = _T_459;
  assign _T_470_2 = _T_459;
  assign _T_470_3 = _T_459;
  assign _T_478 = io_port_1_req_bits_data[15:8];
  assign _T_488_0 = _T_459;
  assign _T_488_1 = _T_478;
  assign _T_488_2 = _T_459;
  assign _T_488_3 = _T_478;
  assign _T_497 = io_port_1_req_bits_data[23:16];
  assign _T_498 = io_port_1_req_bits_data[31:24];
  assign _T_506_0 = _T_459;
  assign _T_506_1 = _T_478;
  assign _T_506_2 = _T_497;
  assign _T_506_3 = _T_498;
  assign _T_513_0 = _T_450 ? _T_488_0 : _T_506_0;
  assign _T_513_1 = _T_450 ? _T_488_1 : _T_506_1;
  assign _T_513_2 = _T_450 ? _T_488_2 : _T_506_2;
  assign _T_513_3 = _T_450 ? _T_488_3 : _T_506_3;
  assign _T_520_0 = _T_453 ? _T_470_0 : _T_513_0;
  assign _T_520_1 = _T_453 ? _T_470_1 : _T_513_1;
  assign _T_520_2 = _T_453 ? _T_470_2 : _T_513_2;
  assign _T_520_3 = _T_453 ? _T_470_3 : _T_513_3;
  assign _T_536 = _T_453 ? 4'h1 : 4'hf;
  assign _T_537 = _T_450 ? 4'h3 : _T_536;
  assign _GEN_89 = {{3'd0}, _T_537};
  assign _T_538 = _GEN_89 << _T_385;
  assign _T_539 = _T_538[3:0];
  assign _T_540 = _T_539[0];
  assign _T_541 = _T_539[1];
  assign _T_542 = _T_539[2];
  assign _T_543 = _T_539[3];
  assign _GEN_32 = _T_444 ? _T_540 : 1'h0;
  assign _GEN_34 = _T_444 ? _T_541 : 1'h0;
  assign _GEN_36 = _T_444 ? _T_542 : 1'h0;
  assign _GEN_38 = _T_444 ? _T_543 : 1'h0;
  assign _T_547 = io_port_1_req_bits_fcn == 1'h0;
  assign _T_548 = io_port_1_req_valid & _T_547;
  assign _T_550 = _T_444 == 1'h0;
  assign _T_551 = _T_550 & _T_548;
  assign _GEN_39 = _T_551 ? _T_391 : _T_389;
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
  _T_203 = _GEN_5[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_6 = {1{$random}};
  _T_378 = _GEN_6[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_7 = {1{$random}};
  _T_389 = _GEN_7[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if(chipMem_0__T_370_en & chipMem_0__T_370_mask) begin
      chipMem_0[chipMem_0__T_370_addr] <= chipMem_0__T_370_data;
    end
    if(chipMem_0__T_545_en & chipMem_0__T_545_mask) begin
      chipMem_0[chipMem_0__T_545_addr] <= chipMem_0__T_545_data;
    end
    if(chipMem_1__T_370_en & chipMem_1__T_370_mask) begin
      chipMem_1[chipMem_1__T_370_addr] <= chipMem_1__T_370_data;
    end
    if(chipMem_1__T_545_en & chipMem_1__T_545_mask) begin
      chipMem_1[chipMem_1__T_545_addr] <= chipMem_1__T_545_data;
    end
    if(chipMem_2__T_370_en & chipMem_2__T_370_mask) begin
      chipMem_2[chipMem_2__T_370_addr] <= chipMem_2__T_370_data;
    end
    if(chipMem_2__T_545_en & chipMem_2__T_545_mask) begin
      chipMem_2[chipMem_2__T_545_addr] <= chipMem_2__T_545_data;
    end
    if(chipMem_3__T_370_en & chipMem_3__T_370_mask) begin
      chipMem_3[chipMem_3__T_370_addr] <= chipMem_3__T_370_data;
    end
    if(chipMem_3__T_545_en & chipMem_3__T_545_mask) begin
      chipMem_3[chipMem_3__T_545_addr] <= chipMem_3__T_545_data;
    end
    if (reset) begin
      _T_192 <= 1'h0;
    end else begin
      _T_192 <= io_port_0_req_valid;
    end
    if (_T_376) begin
      _T_203 <= _T_205;
    end
    if (reset) begin
      _T_378 <= 1'h0;
    end else begin
      _T_378 <= io_port_1_req_valid;
    end
    if (_T_551) begin
      _T_389 <= _T_391;
    end
  end
endmodule
