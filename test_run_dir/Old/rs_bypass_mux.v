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

module rs_bypass_mux(
  input   clock,
  input   reset,
  input  [31:0] io_rs,
  input  [31:0] io_bypass,
  input   io_rs_bypass_mux_sel,
  output [31:0] io_to_rs_mux
);
  wire [31:0] T_12;
  assign io_to_rs_mux = T_12;
  assign T_12 = io_rs_bypass_mux_sel ? io_bypass : io_rs;
endmodule
