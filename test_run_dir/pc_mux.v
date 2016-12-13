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

module pc_mux(
  input   clock,
  input   reset,
  input  [31:0] io_pc_4,
  input  [31:0] io_pc,
  input  [31:0] io_jmp_br,
  input  [3:0] io_pc_sel,
  output [31:0] io_to_pc
);
  wire  T_12;
  wire  T_13;
  wire  T_14;
  wire [31:0] T_15;
  wire [31:0] T_16;
  wire [31:0] T_17;
  assign io_to_pc = T_17;
  assign T_12 = io_pc_sel == 4'h0;
  assign T_13 = io_pc_sel == 4'h1;
  assign T_14 = io_pc_sel == 4'h2;
  assign T_15 = T_14 ? io_jmp_br : io_pc_4;
  assign T_16 = T_13 ? io_pc : T_15;
  assign T_17 = T_12 ? io_pc_4 : T_16;
endmodule
