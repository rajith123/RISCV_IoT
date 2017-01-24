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

module branch_check(
  input   clock,
  input   reset,
  input  [31:0] io_rs1,
  input  [31:0] io_rs2,
  output  io_br_eq,
  output  io_br_lt,
  output  io_br_ltu
);
  wire  T_12;
  wire  T_16;
  wire  T_18;
  wire  T_19;
  wire  GEN_2;
  wire [31:0] T_23;
  wire [31:0] T_24;
  wire  T_25;
  wire  T_29;
  wire  T_30;
  wire  T_31;
  wire  GEN_5;
  wire  GEN_6;
  assign io_br_eq = GEN_5;
  assign io_br_lt = GEN_6;
  assign io_br_ltu = T_31;
  assign T_12 = $signed(io_rs1) == $signed(io_rs2);
  assign T_16 = $signed(io_rs1) < $signed(io_rs2);
  assign T_18 = T_12 == 1'h0;
  assign T_19 = T_18 & T_16;
  assign GEN_2 = T_19 ? 1'h0 : 1'h1;
  assign T_23 = $unsigned(io_rs1);
  assign T_24 = $unsigned(io_rs2);
  assign T_25 = T_23 < T_24;
  assign T_29 = T_16 == 1'h0;
  assign T_30 = T_18 & T_29;
  assign T_31 = T_30 & T_25;
  assign GEN_5 = T_31 ? 1'h0 : GEN_2;
  assign GEN_6 = T_31 ? 1'h0 : T_19;
endmodule
