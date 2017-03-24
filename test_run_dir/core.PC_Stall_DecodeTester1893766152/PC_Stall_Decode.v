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

module PC_Stall_Decode(
  input   clock,
  input   reset,
  input  [31:0] io_IR,
  input   io_DataMem_rdy,
  output  io_PC_MUX_sel0
);
  wire  _T_8;
  wire  _T_10;
  wire  _T_11;
  wire  _T_13;
  wire  _T_14;
  wire  _T_15;
  wire  _T_17;
  wire  Mem_rd;
  wire  _T_18;
  wire  _T_20;
  wire  _T_22;
  wire  Mem_wr_valid;
  wire  _T_40;
  wire  _GEN_1;
  wire  _T_48;
  wire  _GEN_3;
  assign io_PC_MUX_sel0 = _GEN_3;
  assign _T_8 = io_IR[5];
  assign _T_10 = _T_8 == 1'h0;
  assign _T_11 = io_IR[4];
  assign _T_13 = _T_11 == 1'h0;
  assign _T_14 = _T_10 & _T_13;
  assign _T_15 = io_IR[3];
  assign _T_17 = _T_15 == 1'h0;
  assign Mem_rd = _T_14 & _T_17;
  assign _T_18 = io_IR[6];
  assign _T_20 = _T_18 == 1'h0;
  assign _T_22 = _T_20 & _T_8;
  assign Mem_wr_valid = _T_22 & _T_13;
  assign _T_40 = Mem_rd | Mem_wr_valid;
  assign _GEN_1 = io_DataMem_rdy ? 1'h0 : 1'h1;
  assign _T_48 = _T_40 == 1'h0;
  assign _GEN_3 = _T_48 ? 1'h0 : _GEN_1;
endmodule
