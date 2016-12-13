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

module reg_write_mux(
  input   clock,
  input   reset,
  input  [31:0] io_data_mem,
  input  [31:0] io_alu_out,
  input  [31:0] io_pc_4,
  input  [1:0] io_reg_write_mux_sel,
  output [31:0] io_to_reg
);
  wire  T_12;
  wire  T_13;
  wire [31:0] T_16;
  wire [31:0] T_17;
  assign io_to_reg = T_17;
  assign T_12 = io_reg_write_mux_sel == 2'h2;
  assign T_13 = io_reg_write_mux_sel == 2'h0;
  assign T_16 = T_13 ? io_data_mem : io_alu_out;
  assign T_17 = T_12 ? io_pc_4 : T_16;
endmodule
