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

module jmp_br_mux(
  input         clock,
  input         reset,
  input  [31:0] io_jmp,
  input  [31:0] io_br,
  input         io_jmp_br_mux_sel,
  output [31:0] io_to_adder
);
  wire  _T_10;
  wire [31:0] _T_12;
  wire [31:0] _T_13;
  assign io_to_adder = _T_13;
  assign _T_10 = io_jmp_br_mux_sel == 1'h0;
  assign _T_12 = io_jmp_br_mux_sel ? io_br : io_jmp;
  assign _T_13 = _T_10 ? io_jmp : _T_12;
endmodule
