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

module Bubble_Stall(
  input   clock,
  input   reset,
  input  [31:0] io_IR,
  input   io_Mem_rdy,
  output  io_IR_skip_Mux_sel,
  output  io_to_Stall_Mux0
);
  wire  _T_10;
  wire  _T_12;
  wire  _T_13;
  wire  _T_15;
  wire  _T_16;
  wire  _T_17;
  wire  _T_19;
  wire  Mem_rd;
  wire  _T_20;
  wire  _T_22;
  wire  _T_24;
  wire  Mem_wr_valid;
  reg  Mem_rdy_old;
  reg [31:0] _GEN_0;
  wire  _T_32;
  wire  _T_36;
  wire  _T_37;
  wire  _T_41;
  wire  _GEN_1;
  wire  _T_45;
  wire  _GEN_3;
  assign io_IR_skip_Mux_sel = _GEN_3;
  assign io_to_Stall_Mux0 = _GEN_3;
  assign _T_10 = io_IR[5];
  assign _T_12 = _T_10 == 1'h0;
  assign _T_13 = io_IR[4];
  assign _T_15 = _T_13 == 1'h0;
  assign _T_16 = _T_12 & _T_15;
  assign _T_17 = io_IR[3];
  assign _T_19 = _T_17 == 1'h0;
  assign Mem_rd = _T_16 & _T_19;
  assign _T_20 = io_IR[6];
  assign _T_22 = _T_20 == 1'h0;
  assign _T_24 = _T_22 & _T_10;
  assign Mem_wr_valid = _T_24 & _T_15;
  assign _T_32 = Mem_rd | Mem_wr_valid;
  assign _T_36 = Mem_rdy_old == 1'h0;
  assign _T_37 = io_Mem_rdy & _T_36;
  assign _T_41 = _T_37 == 1'h0;
  assign _GEN_1 = _T_41 ? 1'h0 : 1'h1;
  assign _T_45 = _T_32 == 1'h0;
  assign _GEN_3 = _T_45 ? 1'h0 : _GEN_1;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_0 = {1{$random}};
  Mem_rdy_old = _GEN_0[0:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    Mem_rdy_old <= io_Mem_rdy;
  end
endmodule
