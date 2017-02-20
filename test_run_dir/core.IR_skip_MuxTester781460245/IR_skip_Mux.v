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

module IR_skip_Mux(
  input   clock,
  input   reset,
  input  [31:0] io_inst_mem,
  input   io_IR_skip_Mux_sel,
  output [31:0] io_to_ir
);
  wire [31:0] _T_11;
  assign io_to_ir = _T_11;
  assign _T_11 = io_IR_skip_Mux_sel ? 32'h13 : io_inst_mem;
endmodule
