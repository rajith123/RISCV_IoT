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

module ALU(
  input   clock,
  input   reset,
  input  [3:0] io_fn,
  input  [31:0] io_in2,
  input  [31:0] io_in1,
  output [31:0] io_out,
  output [31:0] io_adder_out
);
  wire  _T_12;
  wire [32:0] _T_14;
  wire [31:0] _T_15;
  wire [31:0] _T_16;
  wire [32:0] _T_17;
  wire [31:0] sum;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire  _T_21;
  wire  _T_22;
  wire  _T_25;
  wire  less;
  wire [4:0] shamt;
  wire  _T_26;
  wire  _T_27;
  wire  _T_28;
  wire [15:0] _T_33;
  wire [31:0] _T_34;
  wire [15:0] _T_35;
  wire [31:0] _GEN_0;
  wire [31:0] _T_36;
  wire [31:0] _T_38;
  wire [31:0] _T_39;
  wire [23:0] _T_43;
  wire [31:0] _GEN_1;
  wire [31:0] _T_44;
  wire [23:0] _T_45;
  wire [31:0] _GEN_2;
  wire [31:0] _T_46;
  wire [31:0] _T_48;
  wire [31:0] _T_49;
  wire [27:0] _T_53;
  wire [31:0] _GEN_3;
  wire [31:0] _T_54;
  wire [27:0] _T_55;
  wire [31:0] _GEN_4;
  wire [31:0] _T_56;
  wire [31:0] _T_58;
  wire [31:0] _T_59;
  wire [29:0] _T_63;
  wire [31:0] _GEN_5;
  wire [31:0] _T_64;
  wire [29:0] _T_65;
  wire [31:0] _GEN_6;
  wire [31:0] _T_66;
  wire [31:0] _T_68;
  wire [31:0] _T_69;
  wire [30:0] _T_73;
  wire [31:0] _GEN_7;
  wire [31:0] _T_74;
  wire [30:0] _T_75;
  wire [31:0] _GEN_8;
  wire [31:0] _T_76;
  wire [31:0] _T_78;
  wire [31:0] _T_79;
  wire [31:0] shin;
  wire  _T_81;
  wire  _T_82;
  wire [32:0] _T_83;
  wire [32:0] _T_84;
  wire [32:0] _T_85;
  wire [31:0] shout_r;
  wire [15:0] _T_90;
  wire [31:0] _T_91;
  wire [15:0] _T_92;
  wire [31:0] _GEN_9;
  wire [31:0] _T_93;
  wire [31:0] _T_95;
  wire [31:0] _T_96;
  wire [23:0] _T_100;
  wire [31:0] _GEN_10;
  wire [31:0] _T_101;
  wire [23:0] _T_102;
  wire [31:0] _GEN_11;
  wire [31:0] _T_103;
  wire [31:0] _T_105;
  wire [31:0] _T_106;
  wire [27:0] _T_110;
  wire [31:0] _GEN_12;
  wire [31:0] _T_111;
  wire [27:0] _T_112;
  wire [31:0] _GEN_13;
  wire [31:0] _T_113;
  wire [31:0] _T_115;
  wire [31:0] _T_116;
  wire [29:0] _T_120;
  wire [31:0] _GEN_14;
  wire [31:0] _T_121;
  wire [29:0] _T_122;
  wire [31:0] _GEN_15;
  wire [31:0] _T_123;
  wire [31:0] _T_125;
  wire [31:0] _T_126;
  wire [30:0] _T_130;
  wire [31:0] _GEN_16;
  wire [31:0] _T_131;
  wire [30:0] _T_132;
  wire [31:0] _GEN_17;
  wire [31:0] _T_133;
  wire [31:0] _T_135;
  wire [31:0] shout_l;
  wire  _T_136;
  wire [31:0] _T_137;
  wire  _T_138;
  wire [31:0] _T_139;
  wire  _T_140;
  wire [31:0] _T_141;
  wire [31:0] _T_142;
  wire [31:0] _T_143;
  wire [31:0] bitwise_logic;
  wire  _T_144;
  wire  _T_145;
  wire  _T_146;
  wire  _T_147;
  wire  _T_148;
  wire  _T_149;
  wire  _T_153;
  wire [31:0] _T_154;
  wire [31:0] _T_155;
  wire [31:0] _T_157;
  wire [31:0] out_xpr_length;
  assign io_out = out_xpr_length;
  assign io_adder_out = sum;
  assign _T_12 = io_fn[3];
  assign _T_14 = 32'h0 - io_in2;
  assign _T_15 = _T_14[31:0];
  assign _T_16 = _T_12 ? _T_15 : io_in2;
  assign _T_17 = io_in1 + _T_16;
  assign sum = _T_17[31:0];
  assign _T_18 = io_in1[31];
  assign _T_19 = io_in2[31];
  assign _T_20 = _T_18 == _T_19;
  assign _T_21 = sum[31];
  assign _T_22 = io_fn[0];
  assign _T_25 = _T_22 ? _T_19 : _T_18;
  assign less = _T_20 ? _T_21 : _T_25;
  assign shamt = io_in2[4:0];
  assign _T_26 = io_fn == 4'h5;
  assign _T_27 = io_fn == 4'hb;
  assign _T_28 = _T_26 | _T_27;
  assign _T_33 = io_in1[31:16];
  assign _T_34 = {{16'd0}, _T_33};
  assign _T_35 = io_in1[15:0];
  assign _GEN_0 = {{16'd0}, _T_35};
  assign _T_36 = _GEN_0 << 16;
  assign _T_38 = _T_36 & 32'hffff0000;
  assign _T_39 = _T_34 | _T_38;
  assign _T_43 = _T_39[31:8];
  assign _GEN_1 = {{8'd0}, _T_43};
  assign _T_44 = _GEN_1 & 32'hff00ff;
  assign _T_45 = _T_39[23:0];
  assign _GEN_2 = {{8'd0}, _T_45};
  assign _T_46 = _GEN_2 << 8;
  assign _T_48 = _T_46 & 32'hff00ff00;
  assign _T_49 = _T_44 | _T_48;
  assign _T_53 = _T_49[31:4];
  assign _GEN_3 = {{4'd0}, _T_53};
  assign _T_54 = _GEN_3 & 32'hf0f0f0f;
  assign _T_55 = _T_49[27:0];
  assign _GEN_4 = {{4'd0}, _T_55};
  assign _T_56 = _GEN_4 << 4;
  assign _T_58 = _T_56 & 32'hf0f0f0f0;
  assign _T_59 = _T_54 | _T_58;
  assign _T_63 = _T_59[31:2];
  assign _GEN_5 = {{2'd0}, _T_63};
  assign _T_64 = _GEN_5 & 32'h33333333;
  assign _T_65 = _T_59[29:0];
  assign _GEN_6 = {{2'd0}, _T_65};
  assign _T_66 = _GEN_6 << 2;
  assign _T_68 = _T_66 & 32'hcccccccc;
  assign _T_69 = _T_64 | _T_68;
  assign _T_73 = _T_69[31:1];
  assign _GEN_7 = {{1'd0}, _T_73};
  assign _T_74 = _GEN_7 & 32'h55555555;
  assign _T_75 = _T_69[30:0];
  assign _GEN_8 = {{1'd0}, _T_75};
  assign _T_76 = _GEN_8 << 1;
  assign _T_78 = _T_76 & 32'haaaaaaaa;
  assign _T_79 = _T_74 | _T_78;
  assign shin = _T_28 ? io_in1 : _T_79;
  assign _T_81 = shin[31];
  assign _T_82 = _T_12 & _T_81;
  assign _T_83 = {_T_82,shin};
  assign _T_84 = $signed(_T_83);
  assign _T_85 = $signed(_T_84) >>> shamt;
  assign shout_r = _T_85[31:0];
  assign _T_90 = shout_r[31:16];
  assign _T_91 = {{16'd0}, _T_90};
  assign _T_92 = shout_r[15:0];
  assign _GEN_9 = {{16'd0}, _T_92};
  assign _T_93 = _GEN_9 << 16;
  assign _T_95 = _T_93 & 32'hffff0000;
  assign _T_96 = _T_91 | _T_95;
  assign _T_100 = _T_96[31:8];
  assign _GEN_10 = {{8'd0}, _T_100};
  assign _T_101 = _GEN_10 & 32'hff00ff;
  assign _T_102 = _T_96[23:0];
  assign _GEN_11 = {{8'd0}, _T_102};
  assign _T_103 = _GEN_11 << 8;
  assign _T_105 = _T_103 & 32'hff00ff00;
  assign _T_106 = _T_101 | _T_105;
  assign _T_110 = _T_106[31:4];
  assign _GEN_12 = {{4'd0}, _T_110};
  assign _T_111 = _GEN_12 & 32'hf0f0f0f;
  assign _T_112 = _T_106[27:0];
  assign _GEN_13 = {{4'd0}, _T_112};
  assign _T_113 = _GEN_13 << 4;
  assign _T_115 = _T_113 & 32'hf0f0f0f0;
  assign _T_116 = _T_111 | _T_115;
  assign _T_120 = _T_116[31:2];
  assign _GEN_14 = {{2'd0}, _T_120};
  assign _T_121 = _GEN_14 & 32'h33333333;
  assign _T_122 = _T_116[29:0];
  assign _GEN_15 = {{2'd0}, _T_122};
  assign _T_123 = _GEN_15 << 2;
  assign _T_125 = _T_123 & 32'hcccccccc;
  assign _T_126 = _T_121 | _T_125;
  assign _T_130 = _T_126[31:1];
  assign _GEN_16 = {{1'd0}, _T_130};
  assign _T_131 = _GEN_16 & 32'h55555555;
  assign _T_132 = _T_126[30:0];
  assign _GEN_17 = {{1'd0}, _T_132};
  assign _T_133 = _GEN_17 << 1;
  assign _T_135 = _T_133 & 32'haaaaaaaa;
  assign shout_l = _T_131 | _T_135;
  assign _T_136 = io_fn == 4'h7;
  assign _T_137 = io_in1 & io_in2;
  assign _T_138 = io_fn == 4'h6;
  assign _T_139 = io_in1 | io_in2;
  assign _T_140 = io_fn == 4'h4;
  assign _T_141 = io_in1 ^ io_in2;
  assign _T_142 = _T_140 ? _T_141 : io_in1;
  assign _T_143 = _T_138 ? _T_139 : _T_142;
  assign bitwise_logic = _T_136 ? _T_137 : _T_143;
  assign _T_144 = io_fn == 4'h0;
  assign _T_145 = io_fn == 4'ha;
  assign _T_146 = _T_144 | _T_145;
  assign _T_147 = io_fn == 4'hc;
  assign _T_148 = io_fn == 4'he;
  assign _T_149 = _T_147 | _T_148;
  assign _T_153 = io_fn == 4'h1;
  assign _T_154 = _T_153 ? shout_l : bitwise_logic;
  assign _T_155 = _T_28 ? shout_r : _T_154;
  assign _T_157 = _T_149 ? {{31'd0}, less} : _T_155;
  assign out_xpr_length = _T_146 ? sum : _T_157;
endmodule
