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

module PC4(
  input   clock,
  input   reset,
  input  [31:0] io_PC4_in,
  output [31:0] io_PC4_out
);
  reg [31:0] _T_6;
  reg [31:0] _GEN_0;
  assign io_PC4_out = _T_6;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_0 = {1{$random}};
  _T_6 = _GEN_0[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    _T_6 <= io_PC4_in;
  end
endmodule
