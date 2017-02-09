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

module ByPassBridge(
  input   clock,
  input   reset,
  input  [31:0] io_IR,
  output  io_rs1_bypass_mux_sel,
  output  io_rs2_bypass_mux_sel
);
  reg [31:0] IR_old;
  reg [31:0] _GEN_0;
  wire [4:0] _T_8;
  wire  _T_10;
  wire  _T_13;
  wire  _T_14;
  wire  _T_17;
  wire  _T_18;
  wire  _T_22;
  wire [4:0] _T_23;
  wire  _T_25;
  wire  _T_26;
  wire  _T_28;
  wire  _T_29;
  wire [4:0] _T_30;
  wire [4:0] _T_31;
  wire  _T_32;
  wire  _T_35;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _T_39;
  wire [1:0] _T_40;
  wire  _T_42;
  wire  _T_43;
  wire [4:0] _T_45;
  wire  _T_46;
  wire  _T_49;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_7;
  wire  _GEN_8;
  assign io_rs1_bypass_mux_sel = _GEN_7;
  assign io_rs2_bypass_mux_sel = _GEN_8;
  assign _T_8 = IR_old[6:2];
  assign _T_10 = _T_8 == 5'h8;
  assign _T_13 = _T_8 == 5'h18;
  assign _T_14 = _T_10 | _T_13;
  assign _T_17 = _T_8 == 5'h0;
  assign _T_18 = _T_14 | _T_17;
  assign _T_22 = _T_18 == 1'h0;
  assign _T_23 = io_IR[6:2];
  assign _T_25 = _T_23 == 5'h19;
  assign _T_26 = io_IR[2];
  assign _T_28 = _T_26 == 1'h0;
  assign _T_29 = _T_25 | _T_28;
  assign _T_30 = IR_old[11:7];
  assign _T_31 = io_IR[19:15];
  assign _T_32 = _T_30 == _T_31;
  assign _T_35 = _T_32 == 1'h0;
  assign _GEN_2 = _T_35 ? 1'h0 : _T_32;
  assign _GEN_3 = _T_29 ? _GEN_2 : 1'h0;
  assign _T_39 = _T_23 == 5'h18;
  assign _T_40 = io_IR[6:5];
  assign _T_42 = _T_40 == 2'h1;
  assign _T_43 = _T_39 | _T_42;
  assign _T_45 = io_IR[24:20];
  assign _T_46 = _T_30 == _T_45;
  assign _T_49 = _T_46 == 1'h0;
  assign _GEN_5 = _T_49 ? 1'h0 : _T_46;
  assign _GEN_6 = _T_43 ? _GEN_5 : 1'h0;
  assign _GEN_7 = _T_22 ? _GEN_3 : 1'h0;
  assign _GEN_8 = _T_22 ? _GEN_6 : 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_0 = {1{$random}};
  IR_old = _GEN_0[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    IR_old <= io_IR;
  end
endmodule
