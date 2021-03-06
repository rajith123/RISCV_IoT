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
  wire  T_12;
  wire [32:0] T_14;
  wire [31:0] T_15;
  wire [31:0] T_16;
  wire [32:0] T_17;
  wire [31:0] sum;
  wire  T_18;
  wire  T_19;
  wire  T_20;
  wire  T_21;
  wire  T_22;
  wire  T_25;
  wire  less;
  wire [4:0] shamt;
  wire  T_26;
  wire  T_27;
  wire  T_28;
  wire [15:0] T_33;
  wire [31:0] T_34;
  wire [15:0] T_35;
  wire [31:0] GEN_0;
  wire [31:0] T_36;
  wire [31:0] T_38;
  wire [31:0] T_39;
  wire [23:0] T_43;
  wire [31:0] GEN_1;
  wire [31:0] T_44;
  wire [23:0] T_45;
  wire [31:0] GEN_2;
  wire [31:0] T_46;
  wire [31:0] T_48;
  wire [31:0] T_49;
  wire [27:0] T_53;
  wire [31:0] GEN_3;
  wire [31:0] T_54;
  wire [27:0] T_55;
  wire [31:0] GEN_4;
  wire [31:0] T_56;
  wire [31:0] T_58;
  wire [31:0] T_59;
  wire [29:0] T_63;
  wire [31:0] GEN_5;
  wire [31:0] T_64;
  wire [29:0] T_65;
  wire [31:0] GEN_6;
  wire [31:0] T_66;
  wire [31:0] T_68;
  wire [31:0] T_69;
  wire [30:0] T_73;
  wire [31:0] GEN_7;
  wire [31:0] T_74;
  wire [30:0] T_75;
  wire [31:0] GEN_8;
  wire [31:0] T_76;
  wire [31:0] T_78;
  wire [31:0] T_79;
  wire [31:0] shin;
  wire  T_81;
  wire  T_82;
  wire [32:0] T_83;
  wire [32:0] T_84;
  wire [32:0] T_85;
  wire [31:0] shout_r;
  wire [15:0] T_90;
  wire [31:0] T_91;
  wire [15:0] T_92;
  wire [31:0] GEN_9;
  wire [31:0] T_93;
  wire [31:0] T_95;
  wire [31:0] T_96;
  wire [23:0] T_100;
  wire [31:0] GEN_10;
  wire [31:0] T_101;
  wire [23:0] T_102;
  wire [31:0] GEN_11;
  wire [31:0] T_103;
  wire [31:0] T_105;
  wire [31:0] T_106;
  wire [27:0] T_110;
  wire [31:0] GEN_12;
  wire [31:0] T_111;
  wire [27:0] T_112;
  wire [31:0] GEN_13;
  wire [31:0] T_113;
  wire [31:0] T_115;
  wire [31:0] T_116;
  wire [29:0] T_120;
  wire [31:0] GEN_14;
  wire [31:0] T_121;
  wire [29:0] T_122;
  wire [31:0] GEN_15;
  wire [31:0] T_123;
  wire [31:0] T_125;
  wire [31:0] T_126;
  wire [30:0] T_130;
  wire [31:0] GEN_16;
  wire [31:0] T_131;
  wire [30:0] T_132;
  wire [31:0] GEN_17;
  wire [31:0] T_133;
  wire [31:0] T_135;
  wire [31:0] shout_l;
  wire  T_136;
  wire [31:0] T_137;
  wire  T_138;
  wire [31:0] T_139;
  wire  T_140;
  wire [31:0] T_141;
  wire [31:0] T_142;
  wire [31:0] T_143;
  wire [31:0] bitwise_logic;
  wire  T_144;
  wire  T_145;
  wire  T_146;
  wire  T_147;
  wire  T_148;
  wire  T_149;
  wire  T_153;
  wire [31:0] T_154;
  wire [31:0] T_155;
  wire [31:0] T_157;
  wire [31:0] out_xpr_length;
  assign io_out = out_xpr_length;
  assign io_adder_out = sum;
  assign T_12 = io_fn[3];
  assign T_14 = 32'h0 - io_in2;
  assign T_15 = T_14[31:0];
  assign T_16 = T_12 ? T_15 : io_in2;
  assign T_17 = io_in1 + T_16;
  assign sum = T_17[31:0];
  assign T_18 = io_in1[31];
  assign T_19 = io_in2[31];
  assign T_20 = T_18 == T_19;
  assign T_21 = sum[31];
  assign T_22 = io_fn[0];
  assign T_25 = T_22 ? T_19 : T_18;
  assign less = T_20 ? T_21 : T_25;
  assign shamt = io_in2[4:0];
  assign T_26 = io_fn == 4'h5;
  assign T_27 = io_fn == 4'hb;
  assign T_28 = T_26 | T_27;
  assign T_33 = io_in1[31:16];
  assign T_34 = {{16'd0}, T_33};
  assign T_35 = io_in1[15:0];
  assign GEN_0 = {{16'd0}, T_35};
  assign T_36 = GEN_0 << 16;
  assign T_38 = T_36 & 32'hffff0000;
  assign T_39 = T_34 | T_38;
  assign T_43 = T_39[31:8];
  assign GEN_1 = {{8'd0}, T_43};
  assign T_44 = GEN_1 & 32'hff00ff;
  assign T_45 = T_39[23:0];
  assign GEN_2 = {{8'd0}, T_45};
  assign T_46 = GEN_2 << 8;
  assign T_48 = T_46 & 32'hff00ff00;
  assign T_49 = T_44 | T_48;
  assign T_53 = T_49[31:4];
  assign GEN_3 = {{4'd0}, T_53};
  assign T_54 = GEN_3 & 32'hf0f0f0f;
  assign T_55 = T_49[27:0];
  assign GEN_4 = {{4'd0}, T_55};
  assign T_56 = GEN_4 << 4;
  assign T_58 = T_56 & 32'hf0f0f0f0;
  assign T_59 = T_54 | T_58;
  assign T_63 = T_59[31:2];
  assign GEN_5 = {{2'd0}, T_63};
  assign T_64 = GEN_5 & 32'h33333333;
  assign T_65 = T_59[29:0];
  assign GEN_6 = {{2'd0}, T_65};
  assign T_66 = GEN_6 << 2;
  assign T_68 = T_66 & 32'hcccccccc;
  assign T_69 = T_64 | T_68;
  assign T_73 = T_69[31:1];
  assign GEN_7 = {{1'd0}, T_73};
  assign T_74 = GEN_7 & 32'h55555555;
  assign T_75 = T_69[30:0];
  assign GEN_8 = {{1'd0}, T_75};
  assign T_76 = GEN_8 << 1;
  assign T_78 = T_76 & 32'haaaaaaaa;
  assign T_79 = T_74 | T_78;
  assign shin = T_28 ? io_in1 : T_79;
  assign T_81 = shin[31];
  assign T_82 = T_12 & T_81;
  assign T_83 = {T_82,shin};
  assign T_84 = $signed(T_83);
  assign T_85 = $signed(T_84) >>> shamt;
  assign shout_r = T_85[31:0];
  assign T_90 = shout_r[31:16];
  assign T_91 = {{16'd0}, T_90};
  assign T_92 = shout_r[15:0];
  assign GEN_9 = {{16'd0}, T_92};
  assign T_93 = GEN_9 << 16;
  assign T_95 = T_93 & 32'hffff0000;
  assign T_96 = T_91 | T_95;
  assign T_100 = T_96[31:8];
  assign GEN_10 = {{8'd0}, T_100};
  assign T_101 = GEN_10 & 32'hff00ff;
  assign T_102 = T_96[23:0];
  assign GEN_11 = {{8'd0}, T_102};
  assign T_103 = GEN_11 << 8;
  assign T_105 = T_103 & 32'hff00ff00;
  assign T_106 = T_101 | T_105;
  assign T_110 = T_106[31:4];
  assign GEN_12 = {{4'd0}, T_110};
  assign T_111 = GEN_12 & 32'hf0f0f0f;
  assign T_112 = T_106[27:0];
  assign GEN_13 = {{4'd0}, T_112};
  assign T_113 = GEN_13 << 4;
  assign T_115 = T_113 & 32'hf0f0f0f0;
  assign T_116 = T_111 | T_115;
  assign T_120 = T_116[31:2];
  assign GEN_14 = {{2'd0}, T_120};
  assign T_121 = GEN_14 & 32'h33333333;
  assign T_122 = T_116[29:0];
  assign GEN_15 = {{2'd0}, T_122};
  assign T_123 = GEN_15 << 2;
  assign T_125 = T_123 & 32'hcccccccc;
  assign T_126 = T_121 | T_125;
  assign T_130 = T_126[31:1];
  assign GEN_16 = {{1'd0}, T_130};
  assign T_131 = GEN_16 & 32'h55555555;
  assign T_132 = T_126[30:0];
  assign GEN_17 = {{1'd0}, T_132};
  assign T_133 = GEN_17 << 1;
  assign T_135 = T_133 & 32'haaaaaaaa;
  assign shout_l = T_131 | T_135;
  assign T_136 = io_fn == 4'h7;
  assign T_137 = io_in1 & io_in2;
  assign T_138 = io_fn == 4'h6;
  assign T_139 = io_in1 | io_in2;
  assign T_140 = io_fn == 4'h4;
  assign T_141 = io_in1 ^ io_in2;
  assign T_142 = T_140 ? T_141 : io_in1;
  assign T_143 = T_138 ? T_139 : T_142;
  assign bitwise_logic = T_136 ? T_137 : T_143;
  assign T_144 = io_fn == 4'h0;
  assign T_145 = io_fn == 4'ha;
  assign T_146 = T_144 | T_145;
  assign T_147 = io_fn == 4'hc;
  assign T_148 = io_fn == 4'he;
  assign T_149 = T_147 | T_148;
  assign T_153 = io_fn == 4'h1;
  assign T_154 = T_153 ? shout_l : bitwise_logic;
  assign T_155 = T_28 ? shout_r : T_154;
  assign T_157 = T_149 ? {{31'd0}, less} : T_155;
  assign out_xpr_length = T_146 ? sum : T_157;
endmodule
