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
  wire [7:0] chipMem_0__T_208_data;
  wire [12:0] chipMem_0__T_208_addr;
  wire [7:0] chipMem_0__T_381_data;
  wire [12:0] chipMem_0__T_381_addr;
  wire [7:0] chipMem_0__T_357_data;
  wire [12:0] chipMem_0__T_357_addr;
  wire  chipMem_0__T_357_mask;
  wire  chipMem_0__T_357_en;
  wire [7:0] chipMem_0__T_519_data;
  wire [12:0] chipMem_0__T_519_addr;
  wire  chipMem_0__T_519_mask;
  wire  chipMem_0__T_519_en;
  reg [7:0] chipMem_1 [0:8191];
  reg [31:0] _GEN_1;
  wire [7:0] chipMem_1__T_208_data;
  wire [12:0] chipMem_1__T_208_addr;
  wire [7:0] chipMem_1__T_381_data;
  wire [12:0] chipMem_1__T_381_addr;
  wire [7:0] chipMem_1__T_357_data;
  wire [12:0] chipMem_1__T_357_addr;
  wire  chipMem_1__T_357_mask;
  wire  chipMem_1__T_357_en;
  wire [7:0] chipMem_1__T_519_data;
  wire [12:0] chipMem_1__T_519_addr;
  wire  chipMem_1__T_519_mask;
  wire  chipMem_1__T_519_en;
  reg [7:0] chipMem_2 [0:8191];
  reg [31:0] _GEN_2;
  wire [7:0] chipMem_2__T_208_data;
  wire [12:0] chipMem_2__T_208_addr;
  wire [7:0] chipMem_2__T_381_data;
  wire [12:0] chipMem_2__T_381_addr;
  wire [7:0] chipMem_2__T_357_data;
  wire [12:0] chipMem_2__T_357_addr;
  wire  chipMem_2__T_357_mask;
  wire  chipMem_2__T_357_en;
  wire [7:0] chipMem_2__T_519_data;
  wire [12:0] chipMem_2__T_519_addr;
  wire  chipMem_2__T_519_mask;
  wire  chipMem_2__T_519_en;
  reg [7:0] chipMem_3 [0:8191];
  reg [31:0] _GEN_3;
  wire [7:0] chipMem_3__T_208_data;
  wire [12:0] chipMem_3__T_208_addr;
  wire [7:0] chipMem_3__T_381_data;
  wire [12:0] chipMem_3__T_381_addr;
  wire [7:0] chipMem_3__T_357_data;
  wire [12:0] chipMem_3__T_357_addr;
  wire  chipMem_3__T_357_mask;
  wire  chipMem_3__T_357_en;
  wire [7:0] chipMem_3__T_519_data;
  wire [12:0] chipMem_3__T_519_addr;
  wire  chipMem_3__T_519_mask;
  wire  chipMem_3__T_519_en;
  reg  _T_191;
  reg [31:0] _GEN_4;
  wire [1:0] _T_193;
  wire [4:0] _T_195;
  reg [31:0] _T_197;
  reg [31:0] _GEN_5;
  wire [31:0] _T_199;
  wire [7:0] _T_203_0;
  wire [7:0] _T_203_1;
  wire [7:0] _T_203_2;
  wire [7:0] _T_203_3;
  wire [31:0] _T_206;
  wire [12:0] _T_207;
  wire [15:0] _T_210;
  wire [15:0] _T_211;
  wire [31:0] _T_212;
  wire [31:0] _T_213;
  wire  _T_225;
  wire  _T_226;
  wire [15:0] _T_230;
  wire [15:0] _T_231;
  wire [31:0] _T_232;
  wire  _T_233;
  wire [31:0] _T_240;
  wire  _T_241;
  wire  _T_242;
  wire [23:0] _T_246;
  wire [7:0] _T_247;
  wire [31:0] _T_248;
  wire  _T_249;
  wire [31:0] _T_256;
  wire [31:0] _T_258;
  wire [31:0] _T_259;
  wire [31:0] _T_260;
  wire [31:0] _T_261;
  wire  _T_263;
  wire [7:0] _T_267_0;
  wire [7:0] _T_267_1;
  wire [7:0] _T_267_2;
  wire [7:0] _T_267_3;
  wire [7:0] _T_270;
  wire [7:0] _T_281_0;
  wire [7:0] _T_281_1;
  wire [7:0] _T_281_2;
  wire [7:0] _T_281_3;
  wire [7:0] _T_290;
  wire [7:0] _T_300_0;
  wire [7:0] _T_300_1;
  wire [7:0] _T_300_2;
  wire [7:0] _T_300_3;
  wire [7:0] _T_309;
  wire [7:0] _T_310;
  wire [7:0] _T_318_0;
  wire [7:0] _T_318_1;
  wire [7:0] _T_318_2;
  wire [7:0] _T_318_3;
  wire  _T_341;
  wire  _T_345;
  wire [3:0] _T_348;
  wire [3:0] _T_349;
  wire [6:0] _GEN_88;
  wire [6:0] _T_350;
  wire [3:0] _T_351;
  wire  _T_352;
  wire  _T_353;
  wire  _T_354;
  wire  _T_355;
  wire  _GEN_12;
  wire  _GEN_14;
  wire  _GEN_16;
  wire  _GEN_18;
  wire  _T_359;
  wire  _T_360;
  wire  _T_362;
  wire  _T_363;
  wire [31:0] _GEN_19;
  reg  _T_364;
  reg [31:0] _GEN_6;
  wire [1:0] _T_366;
  wire [4:0] _T_368;
  reg [31:0] _T_370;
  reg [31:0] _GEN_7;
  wire [31:0] _T_372;
  wire [7:0] _T_376_0;
  wire [7:0] _T_376_1;
  wire [7:0] _T_376_2;
  wire [7:0] _T_376_3;
  wire [31:0] _T_379;
  wire [12:0] _T_380;
  wire [15:0] _T_383;
  wire [15:0] _T_384;
  wire [31:0] _T_385;
  wire [31:0] _T_386;
  wire  _T_387;
  wire  _T_388;
  wire [15:0] _T_392;
  wire [15:0] _T_393;
  wire [31:0] _T_394;
  wire  _T_395;
  wire [31:0] _T_402;
  wire  _T_403;
  wire  _T_404;
  wire [23:0] _T_408;
  wire [7:0] _T_409;
  wire [31:0] _T_410;
  wire  _T_411;
  wire [31:0] _T_418;
  wire [31:0] _T_420;
  wire [31:0] _T_421;
  wire [31:0] _T_422;
  wire [31:0] _T_423;
  wire  _T_425;
  wire [7:0] _T_429_0;
  wire [7:0] _T_429_1;
  wire [7:0] _T_429_2;
  wire [7:0] _T_429_3;
  wire [7:0] _T_432;
  wire [7:0] _T_443_0;
  wire [7:0] _T_443_1;
  wire [7:0] _T_443_2;
  wire [7:0] _T_443_3;
  wire [7:0] _T_452;
  wire [7:0] _T_462_0;
  wire [7:0] _T_462_1;
  wire [7:0] _T_462_2;
  wire [7:0] _T_462_3;
  wire [7:0] _T_471;
  wire [7:0] _T_472;
  wire [7:0] _T_480_0;
  wire [7:0] _T_480_1;
  wire [7:0] _T_480_2;
  wire [7:0] _T_480_3;
  wire  _T_503;
  wire  _T_507;
  wire [3:0] _T_510;
  wire [3:0] _T_511;
  wire [6:0] _GEN_89;
  wire [6:0] _T_512;
  wire [3:0] _T_513;
  wire  _T_514;
  wire  _T_515;
  wire  _T_516;
  wire  _T_517;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire  _GEN_38;
  wire  _T_521;
  wire  _T_522;
  wire  _T_524;
  wire  _T_525;
  wire [31:0] _GEN_39;
  assign io_port_0_req_ready = 1'h1;
  assign io_port_0_resp_valid = _T_191;
  assign io_port_0_resp_bits_data = _T_206;
  assign io_port_1_req_ready = 1'h1;
  assign io_port_1_resp_valid = _T_364;
  assign io_port_1_resp_bits_data = _T_379;
  assign chipMem_0__T_208_addr = _T_207;
  assign chipMem_0__T_208_data = chipMem_0[chipMem_0__T_208_addr];
  assign chipMem_0__T_381_addr = _T_380;
  assign chipMem_0__T_381_data = chipMem_0[chipMem_0__T_381_addr];
  assign chipMem_0__T_357_data = _T_267_0;
  assign chipMem_0__T_357_addr = _T_207;
  assign chipMem_0__T_357_mask = _GEN_12;
  assign chipMem_0__T_357_en = _T_263;
  assign chipMem_0__T_519_data = _T_429_0;
  assign chipMem_0__T_519_addr = _T_380;
  assign chipMem_0__T_519_mask = _GEN_32;
  assign chipMem_0__T_519_en = _T_425;
  assign chipMem_1__T_208_addr = _T_207;
  assign chipMem_1__T_208_data = chipMem_1[chipMem_1__T_208_addr];
  assign chipMem_1__T_381_addr = _T_380;
  assign chipMem_1__T_381_data = chipMem_1[chipMem_1__T_381_addr];
  assign chipMem_1__T_357_data = _T_267_1;
  assign chipMem_1__T_357_addr = _T_207;
  assign chipMem_1__T_357_mask = _GEN_14;
  assign chipMem_1__T_357_en = _T_263;
  assign chipMem_1__T_519_data = _T_429_1;
  assign chipMem_1__T_519_addr = _T_380;
  assign chipMem_1__T_519_mask = _GEN_34;
  assign chipMem_1__T_519_en = _T_425;
  assign chipMem_2__T_208_addr = _T_207;
  assign chipMem_2__T_208_data = chipMem_2[chipMem_2__T_208_addr];
  assign chipMem_2__T_381_addr = _T_380;
  assign chipMem_2__T_381_data = chipMem_2[chipMem_2__T_381_addr];
  assign chipMem_2__T_357_data = _T_267_2;
  assign chipMem_2__T_357_addr = _T_207;
  assign chipMem_2__T_357_mask = _GEN_16;
  assign chipMem_2__T_357_en = _T_263;
  assign chipMem_2__T_519_data = _T_429_2;
  assign chipMem_2__T_519_addr = _T_380;
  assign chipMem_2__T_519_mask = _GEN_36;
  assign chipMem_2__T_519_en = _T_425;
  assign chipMem_3__T_208_addr = _T_207;
  assign chipMem_3__T_208_data = chipMem_3[chipMem_3__T_208_addr];
  assign chipMem_3__T_381_addr = _T_380;
  assign chipMem_3__T_381_data = chipMem_3[chipMem_3__T_381_addr];
  assign chipMem_3__T_357_data = _T_267_3;
  assign chipMem_3__T_357_addr = _T_207;
  assign chipMem_3__T_357_mask = _GEN_18;
  assign chipMem_3__T_357_en = _T_263;
  assign chipMem_3__T_519_data = _T_429_3;
  assign chipMem_3__T_519_addr = _T_380;
  assign chipMem_3__T_519_mask = _GEN_38;
  assign chipMem_3__T_519_en = _T_425;
  assign _T_193 = io_port_0_req_bits_addr[1:0];
  assign _T_195 = {_T_193,3'h0};
  assign _T_199 = io_port_0_req_bits_addr >> 2'h2;
  assign _T_203_0 = chipMem_0__T_208_data;
  assign _T_203_1 = chipMem_1__T_208_data;
  assign _T_203_2 = chipMem_2__T_208_data;
  assign _T_203_3 = chipMem_3__T_208_data;
  assign _T_206 = _T_261;
  assign _T_207 = _T_199[12:0];
  assign _T_210 = {_T_203_1,_T_203_0};
  assign _T_211 = {_T_203_3,_T_203_2};
  assign _T_212 = {_T_211,_T_210};
  assign _T_213 = _T_212 >> _T_195;
  assign _T_225 = io_port_0_req_bits_typ == 3'h2;
  assign _T_226 = _T_213[15];
  assign _T_230 = _T_226 ? 16'hffff : 16'h0;
  assign _T_231 = _T_213[15:0];
  assign _T_232 = {_T_230,_T_231};
  assign _T_233 = io_port_0_req_bits_typ == 3'h6;
  assign _T_240 = {16'h0,_T_231};
  assign _T_241 = io_port_0_req_bits_typ == 3'h1;
  assign _T_242 = _T_213[7];
  assign _T_246 = _T_242 ? 24'hffffff : 24'h0;
  assign _T_247 = _T_213[7:0];
  assign _T_248 = {_T_246,_T_247};
  assign _T_249 = io_port_0_req_bits_typ == 3'h5;
  assign _T_256 = {24'h0,_T_247};
  assign _T_258 = _T_249 ? _T_256 : _T_213;
  assign _T_259 = _T_241 ? _T_248 : _T_258;
  assign _T_260 = _T_233 ? _T_240 : _T_259;
  assign _T_261 = _T_225 ? _T_232 : _T_260;
  assign _T_263 = io_port_0_req_valid & io_port_0_req_bits_fcn;
  assign _T_267_0 = _T_318_0;
  assign _T_267_1 = _T_318_1;
  assign _T_267_2 = _T_318_2;
  assign _T_267_3 = _T_318_3;
  assign _T_270 = io_port_0_req_bits_data[7:0];
  assign _T_281_0 = _T_270;
  assign _T_281_1 = _T_270;
  assign _T_281_2 = _T_270;
  assign _T_281_3 = _T_270;
  assign _T_290 = io_port_0_req_bits_data[15:8];
  assign _T_300_0 = _T_270;
  assign _T_300_1 = _T_290;
  assign _T_300_2 = _T_270;
  assign _T_300_3 = _T_290;
  assign _T_309 = io_port_0_req_bits_data[23:16];
  assign _T_310 = io_port_0_req_bits_data[31:24];
  assign _T_318_0 = _T_270;
  assign _T_318_1 = _T_290;
  assign _T_318_2 = _T_309;
  assign _T_318_3 = _T_310;
  assign _T_341 = _T_225 | _T_233;
  assign _T_345 = _T_241 | _T_249;
  assign _T_348 = _T_345 ? 4'h1 : 4'hf;
  assign _T_349 = _T_341 ? 4'h3 : _T_348;
  assign _GEN_88 = {{3'd0}, _T_349};
  assign _T_350 = _GEN_88 << _T_193;
  assign _T_351 = _T_350[3:0];
  assign _T_352 = _T_351[0];
  assign _T_353 = _T_351[1];
  assign _T_354 = _T_351[2];
  assign _T_355 = _T_351[3];
  assign _GEN_12 = _T_263 ? _T_352 : 1'h0;
  assign _GEN_14 = _T_263 ? _T_353 : 1'h0;
  assign _GEN_16 = _T_263 ? _T_354 : 1'h0;
  assign _GEN_18 = _T_263 ? _T_355 : 1'h0;
  assign _T_359 = io_port_0_req_bits_fcn == 1'h0;
  assign _T_360 = io_port_0_req_valid & _T_359;
  assign _T_362 = _T_263 == 1'h0;
  assign _T_363 = _T_362 & _T_360;
  assign _GEN_19 = _T_363 ? _T_199 : _T_197;
  assign _T_366 = io_port_1_req_bits_addr[1:0];
  assign _T_368 = {_T_366,3'h0};
  assign _T_372 = io_port_1_req_bits_addr >> 2'h2;
  assign _T_376_0 = chipMem_0__T_381_data;
  assign _T_376_1 = chipMem_1__T_381_data;
  assign _T_376_2 = chipMem_2__T_381_data;
  assign _T_376_3 = chipMem_3__T_381_data;
  assign _T_379 = _T_423;
  assign _T_380 = _T_372[12:0];
  assign _T_383 = {_T_376_1,_T_376_0};
  assign _T_384 = {_T_376_3,_T_376_2};
  assign _T_385 = {_T_384,_T_383};
  assign _T_386 = _T_385 >> _T_368;
  assign _T_387 = io_port_1_req_bits_typ == 3'h2;
  assign _T_388 = _T_386[15];
  assign _T_392 = _T_388 ? 16'hffff : 16'h0;
  assign _T_393 = _T_386[15:0];
  assign _T_394 = {_T_392,_T_393};
  assign _T_395 = io_port_1_req_bits_typ == 3'h6;
  assign _T_402 = {16'h0,_T_393};
  assign _T_403 = io_port_1_req_bits_typ == 3'h1;
  assign _T_404 = _T_386[7];
  assign _T_408 = _T_404 ? 24'hffffff : 24'h0;
  assign _T_409 = _T_386[7:0];
  assign _T_410 = {_T_408,_T_409};
  assign _T_411 = io_port_1_req_bits_typ == 3'h5;
  assign _T_418 = {24'h0,_T_409};
  assign _T_420 = _T_411 ? _T_418 : _T_386;
  assign _T_421 = _T_403 ? _T_410 : _T_420;
  assign _T_422 = _T_395 ? _T_402 : _T_421;
  assign _T_423 = _T_387 ? _T_394 : _T_422;
  assign _T_425 = io_port_1_req_valid & io_port_1_req_bits_fcn;
  assign _T_429_0 = _T_480_0;
  assign _T_429_1 = _T_480_1;
  assign _T_429_2 = _T_480_2;
  assign _T_429_3 = _T_480_3;
  assign _T_432 = io_port_1_req_bits_data[7:0];
  assign _T_443_0 = _T_432;
  assign _T_443_1 = _T_432;
  assign _T_443_2 = _T_432;
  assign _T_443_3 = _T_432;
  assign _T_452 = io_port_1_req_bits_data[15:8];
  assign _T_462_0 = _T_432;
  assign _T_462_1 = _T_452;
  assign _T_462_2 = _T_432;
  assign _T_462_3 = _T_452;
  assign _T_471 = io_port_1_req_bits_data[23:16];
  assign _T_472 = io_port_1_req_bits_data[31:24];
  assign _T_480_0 = _T_432;
  assign _T_480_1 = _T_452;
  assign _T_480_2 = _T_471;
  assign _T_480_3 = _T_472;
  assign _T_503 = _T_387 | _T_395;
  assign _T_507 = _T_403 | _T_411;
  assign _T_510 = _T_507 ? 4'h1 : 4'hf;
  assign _T_511 = _T_503 ? 4'h3 : _T_510;
  assign _GEN_89 = {{3'd0}, _T_511};
  assign _T_512 = _GEN_89 << _T_366;
  assign _T_513 = _T_512[3:0];
  assign _T_514 = _T_513[0];
  assign _T_515 = _T_513[1];
  assign _T_516 = _T_513[2];
  assign _T_517 = _T_513[3];
  assign _GEN_32 = _T_425 ? _T_514 : 1'h0;
  assign _GEN_34 = _T_425 ? _T_515 : 1'h0;
  assign _GEN_36 = _T_425 ? _T_516 : 1'h0;
  assign _GEN_38 = _T_425 ? _T_517 : 1'h0;
  assign _T_521 = io_port_1_req_bits_fcn == 1'h0;
  assign _T_522 = io_port_1_req_valid & _T_521;
  assign _T_524 = _T_425 == 1'h0;
  assign _T_525 = _T_524 & _T_522;
  assign _GEN_39 = _T_525 ? _T_372 : _T_370;
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
  _T_191 = _GEN_4[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_5 = {1{$random}};
  _T_197 = _GEN_5[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_6 = {1{$random}};
  _T_364 = _GEN_6[0:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_7 = {1{$random}};
  _T_370 = _GEN_7[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if(chipMem_0__T_357_en & chipMem_0__T_357_mask) begin
      chipMem_0[chipMem_0__T_357_addr] <= chipMem_0__T_357_data;
    end
    if(chipMem_0__T_519_en & chipMem_0__T_519_mask) begin
      chipMem_0[chipMem_0__T_519_addr] <= chipMem_0__T_519_data;
    end
    if(chipMem_1__T_357_en & chipMem_1__T_357_mask) begin
      chipMem_1[chipMem_1__T_357_addr] <= chipMem_1__T_357_data;
    end
    if(chipMem_1__T_519_en & chipMem_1__T_519_mask) begin
      chipMem_1[chipMem_1__T_519_addr] <= chipMem_1__T_519_data;
    end
    if(chipMem_2__T_357_en & chipMem_2__T_357_mask) begin
      chipMem_2[chipMem_2__T_357_addr] <= chipMem_2__T_357_data;
    end
    if(chipMem_2__T_519_en & chipMem_2__T_519_mask) begin
      chipMem_2[chipMem_2__T_519_addr] <= chipMem_2__T_519_data;
    end
    if(chipMem_3__T_357_en & chipMem_3__T_357_mask) begin
      chipMem_3[chipMem_3__T_357_addr] <= chipMem_3__T_357_data;
    end
    if(chipMem_3__T_519_en & chipMem_3__T_519_mask) begin
      chipMem_3[chipMem_3__T_519_addr] <= chipMem_3__T_519_data;
    end
    _T_191 <= io_port_0_req_valid;
    if (_T_363) begin
      _T_197 <= _T_199;
    end
    _T_364 <= io_port_1_req_valid;
    if (_T_525) begin
      _T_370 <= _T_372;
    end
  end
endmodule
