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
  wire [4:0] _T_24;
  wire [4:0] _T_25;
  wire  _T_26;
  wire  _T_29;
  wire  _GEN_1;
  wire [4:0] _T_39;
  wire  _T_40;
  wire  _T_43;
  wire  _GEN_4;
  assign io_rs1_bypass_mux_sel = _GEN_1;
  assign io_rs2_bypass_mux_sel = _GEN_4;
  assign _T_24 = IR_old[11:7];
  assign _T_25 = io_IR[19:15];
  assign _T_26 = _T_24 == _T_25;
  assign _T_29 = _T_26 == 1'h0;
  assign _GEN_1 = _T_29 ? 1'h0 : 1'h1;
  assign _T_39 = io_IR[24:20];
  assign _T_40 = _T_24 == _T_39;
  assign _T_43 = _T_40 == 1'h0;
  assign _GEN_4 = _T_43 ? 1'h0 : 1'h1;
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
