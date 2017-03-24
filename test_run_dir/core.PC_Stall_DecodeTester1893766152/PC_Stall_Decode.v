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

module PC_Stall_Decode(
  input   clock,
  input   reset,
  input  [31:0] io_IR,
  input   io_br_eq,
  input   io_br_lt,
  input   io_br_ltu,
  input   io_DataMem_rdy,
  output [1:0] io_PC_MUX_sel
);
  wire [2:0] func3;
  wire  _T_14;
  wire  _T_16;
  wire  _T_17;
  wire  _T_19;
  wire  _T_20;
  wire  _T_21;
  wire  _T_23;
  wire  Mem_rd;
  wire  _T_24;
  wire  _T_26;
  wire  _T_28;
  wire  Mem_wr_valid;
  wire  _T_32;
  wire  _T_35;
  wire  _T_36;
  wire  _T_38;
  wire  _T_39;
  wire  _T_40;
  wire  _T_41;
  wire  _T_44;
  wire  _T_45;
  wire  _T_46;
  wire  _T_48;
  wire  _T_49;
  wire  _T_50;
  wire  _T_51;
  wire  _T_54;
  wire  _T_55;
  wire  _T_58;
  wire  _T_59;
  wire  branch;
  wire  _T_61;
  wire  jmp_jalr;
  wire  _T_66;
  wire  _T_69;
  wire  br;
  wire  _T_70;
  wire  _T_71;
  wire  _T_74;
  wire  _T_79;
  wire  _T_81;
  wire [1:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire  _T_87;
  wire [1:0] _GEN_4;
  wire [1:0] _GEN_5;
  assign io_PC_MUX_sel = _GEN_5;
  assign func3 = io_IR[14:12];
  assign _T_14 = io_IR[5];
  assign _T_16 = _T_14 == 1'h0;
  assign _T_17 = io_IR[4];
  assign _T_19 = _T_17 == 1'h0;
  assign _T_20 = _T_16 & _T_19;
  assign _T_21 = io_IR[3];
  assign _T_23 = _T_21 == 1'h0;
  assign Mem_rd = _T_20 & _T_23;
  assign _T_24 = io_IR[6];
  assign _T_26 = _T_24 == 1'h0;
  assign _T_28 = _T_26 & _T_14;
  assign Mem_wr_valid = _T_28 & _T_19;
  assign _T_32 = func3 == 3'h0;
  assign _T_35 = _T_32 & io_br_eq;
  assign _T_36 = func3 == 3'h1;
  assign _T_38 = io_br_eq == 1'h0;
  assign _T_39 = _T_36 & _T_38;
  assign _T_40 = _T_35 | _T_39;
  assign _T_41 = func3 == 3'h4;
  assign _T_44 = _T_41 & io_br_lt;
  assign _T_45 = _T_40 | _T_44;
  assign _T_46 = func3 == 3'h5;
  assign _T_48 = io_br_lt == 1'h0;
  assign _T_49 = _T_46 & _T_48;
  assign _T_50 = _T_45 | _T_49;
  assign _T_51 = func3 == 3'h6;
  assign _T_54 = _T_51 & io_br_ltu;
  assign _T_55 = _T_50 | _T_54;
  assign _T_58 = io_br_ltu == 1'h0;
  assign _T_59 = _T_46 & _T_58;
  assign branch = _T_55 | _T_59;
  assign _T_61 = io_IR[2];
  assign jmp_jalr = _T_24 & _T_61;
  assign _T_66 = _T_24 & _T_19;
  assign _T_69 = _T_61 == 1'h0;
  assign br = _T_66 & _T_69;
  assign _T_70 = br & branch;
  assign _T_71 = jmp_jalr | _T_70;
  assign _T_74 = _T_71 == 1'h0;
  assign _T_79 = Mem_rd | Mem_wr_valid;
  assign _T_81 = io_DataMem_rdy == 1'h0;
  assign _GEN_1 = _T_81 ? 2'h1 : 2'h2;
  assign _GEN_2 = io_DataMem_rdy ? 2'h0 : _GEN_1;
  assign _GEN_3 = _T_79 ? _GEN_2 : 2'h2;
  assign _T_87 = _T_79 == 1'h0;
  assign _GEN_4 = _T_87 ? 2'h0 : _GEN_3;
  assign _GEN_5 = _T_74 ? _GEN_4 : 2'h2;
endmodule
