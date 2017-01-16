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

module imm_ext(
  input   clock,
  input   reset,
  input  [31:0] io_ir_in,
  output [31:0] io_imm_i_sext,
  output [31:0] io_imm_s_sext,
  output [31:0] io_imm_b_sext,
  output [31:0] io_imm_u_sext,
  output [31:0] io_imm_j_sext
);
  wire [11:0] imm_i;
  wire [6:0] _T_14;
  wire [4:0] _T_15;
  wire [11:0] imm_s;
  wire  _T_16;
  wire  _T_17;
  wire [5:0] _T_18;
  wire [3:0] _T_19;
  wire [9:0] _T_20;
  wire [1:0] _T_21;
  wire [11:0] imm_b;
  wire [19:0] imm_u;
  wire [7:0] _T_23;
  wire  _T_24;
  wire [9:0] _T_25;
  wire [10:0] _T_26;
  wire [8:0] _T_27;
  wire [19:0] imm_j;
  wire  _T_28;
  wire [19:0] _T_32;
  wire [31:0] _T_33;
  wire  _T_34;
  wire [19:0] _T_38;
  wire [31:0] _T_39;
  wire  _T_40;
  wire [18:0] _T_44;
  wire [30:0] _T_46;
  wire [31:0] _T_47;
  wire [31:0] _T_53;
  wire  _T_54;
  wire [10:0] _T_58;
  wire [30:0] _T_60;
  wire [31:0] _T_61;
  assign io_imm_i_sext = _T_33;
  assign io_imm_s_sext = _T_39;
  assign io_imm_b_sext = _T_47;
  assign io_imm_u_sext = _T_53;
  assign io_imm_j_sext = _T_61;
  assign imm_i = io_ir_in[31:20];
  assign _T_14 = io_ir_in[31:25];
  assign _T_15 = io_ir_in[11:7];
  assign imm_s = {_T_14,_T_15};
  assign _T_16 = io_ir_in[31];
  assign _T_17 = io_ir_in[7];
  assign _T_18 = io_ir_in[30:25];
  assign _T_19 = io_ir_in[11:8];
  assign _T_20 = {_T_18,_T_19};
  assign _T_21 = {_T_16,_T_17};
  assign imm_b = {_T_21,_T_20};
  assign imm_u = io_ir_in[31:12];
  assign _T_23 = io_ir_in[19:12];
  assign _T_24 = io_ir_in[20];
  assign _T_25 = io_ir_in[30:21];
  assign _T_26 = {_T_24,_T_25};
  assign _T_27 = {_T_16,_T_23};
  assign imm_j = {_T_27,_T_26};
  assign _T_28 = imm_i[11];
  assign _T_32 = _T_28 ? 20'hfffff : 20'h0;
  assign _T_33 = {_T_32,imm_i};
  assign _T_34 = imm_s[11];
  assign _T_38 = _T_34 ? 20'hfffff : 20'h0;
  assign _T_39 = {_T_38,imm_s};
  assign _T_40 = imm_b[11];
  assign _T_44 = _T_40 ? 19'h7ffff : 19'h0;
  assign _T_46 = {_T_44,imm_b};
  assign _T_47 = {_T_46,1'h0};
  assign _T_53 = {imm_u,12'h0};
  assign _T_54 = imm_j[19];
  assign _T_58 = _T_54 ? 11'h7ff : 11'h0;
  assign _T_60 = {_T_58,imm_j};
  assign _T_61 = {_T_60,1'h0};
endmodule
