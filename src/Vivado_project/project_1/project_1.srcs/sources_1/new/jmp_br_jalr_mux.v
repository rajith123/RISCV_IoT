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

module jmp_br_jalr_mux(
  input   clock,
  input   reset,
  input  [31:0] io_br_jmp,
  input  [31:0] io_jalr,
  input   io_jmp_br_jalr_mux_sel,
  output [31:0] io_to_pc_mux
);
  wire [31:0] _T_12;
  assign io_to_pc_mux = _T_12;
  assign _T_12 = io_jmp_br_jalr_mux_sel ? io_jalr : io_br_jmp;
endmodule
