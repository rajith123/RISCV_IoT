;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit ALU : 
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip fn : UInt<4>, flip in2 : UInt<32>, flip in1 : UInt<32>, out : UInt<32>, adder_out : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_12 = bits(io.fn, 3, 3) @[alu.scala 25:29]
    node _T_14 = sub(UInt<1>("h00"), io.in2) @[alu.scala 46:40]
    node _T_15 = asUInt(_T_14) @[alu.scala 46:40]
    node _T_16 = tail(_T_15, 1) @[alu.scala 46:40]
    node _T_17 = mux(_T_12, _T_16, io.in2) @[alu.scala 46:25]
    node _T_18 = add(io.in1, _T_17) @[alu.scala 46:20]
    node sum = tail(_T_18, 1) @[alu.scala 46:20]
    node _T_19 = bits(io.in1, 31, 31) @[alu.scala 49:25]
    node _T_20 = bits(io.in2, 31, 31) @[alu.scala 49:41]
    node _T_21 = eq(_T_19, _T_20) @[alu.scala 49:31]
    node _T_22 = bits(sum, 31, 31) @[alu.scala 49:51]
    node _T_23 = bits(io.fn, 0, 0) @[alu.scala 26:30]
    node _T_24 = bits(io.in2, 31, 31) @[alu.scala 50:40]
    node _T_25 = bits(io.in1, 31, 31) @[alu.scala 50:53]
    node _T_26 = mux(_T_23, _T_24, _T_25) @[alu.scala 50:18]
    node less = mux(_T_21, _T_22, _T_26) @[alu.scala 49:18]
    node shamt = bits(io.in2, 4, 0) @[alu.scala 53:21]
    node shin_r = bits(io.in1, 31, 0) @[alu.scala 54:22]
    node _T_27 = eq(io.fn, UInt<3>("h05")) @[alu.scala 55:24]
    node _T_28 = eq(io.fn, UInt<4>("h0d")) @[alu.scala 55:46]
    node _T_29 = or(_T_27, _T_28) @[alu.scala 55:37]
    node _T_32 = shl(UInt<16>("h0ffff"), 16) @[Bitwise.scala 102:47]
    node _T_33 = xor(UInt<32>("h0ffffffff"), _T_32) @[Bitwise.scala 102:21]
    node _T_34 = shr(shin_r, 16) @[Bitwise.scala 103:21]
    node _T_35 = and(_T_34, _T_33) @[Bitwise.scala 103:31]
    node _T_36 = bits(shin_r, 15, 0) @[Bitwise.scala 103:46]
    node _T_37 = shl(_T_36, 16) @[Bitwise.scala 103:65]
    node _T_38 = not(_T_33) @[Bitwise.scala 103:77]
    node _T_39 = and(_T_37, _T_38) @[Bitwise.scala 103:75]
    node _T_40 = or(_T_35, _T_39) @[Bitwise.scala 103:39]
    node _T_41 = bits(_T_33, 23, 0) @[Bitwise.scala 102:28]
    node _T_42 = shl(_T_41, 8) @[Bitwise.scala 102:47]
    node _T_43 = xor(_T_33, _T_42) @[Bitwise.scala 102:21]
    node _T_44 = shr(_T_40, 8) @[Bitwise.scala 103:21]
    node _T_45 = and(_T_44, _T_43) @[Bitwise.scala 103:31]
    node _T_46 = bits(_T_40, 23, 0) @[Bitwise.scala 103:46]
    node _T_47 = shl(_T_46, 8) @[Bitwise.scala 103:65]
    node _T_48 = not(_T_43) @[Bitwise.scala 103:77]
    node _T_49 = and(_T_47, _T_48) @[Bitwise.scala 103:75]
    node _T_50 = or(_T_45, _T_49) @[Bitwise.scala 103:39]
    node _T_51 = bits(_T_43, 27, 0) @[Bitwise.scala 102:28]
    node _T_52 = shl(_T_51, 4) @[Bitwise.scala 102:47]
    node _T_53 = xor(_T_43, _T_52) @[Bitwise.scala 102:21]
    node _T_54 = shr(_T_50, 4) @[Bitwise.scala 103:21]
    node _T_55 = and(_T_54, _T_53) @[Bitwise.scala 103:31]
    node _T_56 = bits(_T_50, 27, 0) @[Bitwise.scala 103:46]
    node _T_57 = shl(_T_56, 4) @[Bitwise.scala 103:65]
    node _T_58 = not(_T_53) @[Bitwise.scala 103:77]
    node _T_59 = and(_T_57, _T_58) @[Bitwise.scala 103:75]
    node _T_60 = or(_T_55, _T_59) @[Bitwise.scala 103:39]
    node _T_61 = bits(_T_53, 29, 0) @[Bitwise.scala 102:28]
    node _T_62 = shl(_T_61, 2) @[Bitwise.scala 102:47]
    node _T_63 = xor(_T_53, _T_62) @[Bitwise.scala 102:21]
    node _T_64 = shr(_T_60, 2) @[Bitwise.scala 103:21]
    node _T_65 = and(_T_64, _T_63) @[Bitwise.scala 103:31]
    node _T_66 = bits(_T_60, 29, 0) @[Bitwise.scala 103:46]
    node _T_67 = shl(_T_66, 2) @[Bitwise.scala 103:65]
    node _T_68 = not(_T_63) @[Bitwise.scala 103:77]
    node _T_69 = and(_T_67, _T_68) @[Bitwise.scala 103:75]
    node _T_70 = or(_T_65, _T_69) @[Bitwise.scala 103:39]
    node _T_71 = bits(_T_63, 30, 0) @[Bitwise.scala 102:28]
    node _T_72 = shl(_T_71, 1) @[Bitwise.scala 102:47]
    node _T_73 = xor(_T_63, _T_72) @[Bitwise.scala 102:21]
    node _T_74 = shr(_T_70, 1) @[Bitwise.scala 103:21]
    node _T_75 = and(_T_74, _T_73) @[Bitwise.scala 103:31]
    node _T_76 = bits(_T_70, 30, 0) @[Bitwise.scala 103:46]
    node _T_77 = shl(_T_76, 1) @[Bitwise.scala 103:65]
    node _T_78 = not(_T_73) @[Bitwise.scala 103:77]
    node _T_79 = and(_T_77, _T_78) @[Bitwise.scala 103:75]
    node _T_80 = or(_T_75, _T_79) @[Bitwise.scala 103:39]
    node shin = mux(_T_29, shin_r, _T_80) @[alu.scala 55:17]
    node _T_81 = bits(io.fn, 3, 3) @[alu.scala 25:29]
    node _T_82 = bits(shin, 31, 31) @[alu.scala 56:41]
    node _T_83 = and(_T_81, _T_82) @[alu.scala 56:35]
    node _T_84 = cat(_T_83, shin) @[Cat.scala 30:58]
    node _T_85 = asSInt(_T_84)
    node _T_86 = dshr(_T_85, shamt) @[alu.scala 56:61]
    node shout_r = bits(_T_86, 31, 0) @[alu.scala 56:70]
    node _T_89 = shl(UInt<16>("h0ffff"), 16) @[Bitwise.scala 102:47]
    node _T_90 = xor(UInt<32>("h0ffffffff"), _T_89) @[Bitwise.scala 102:21]
    node _T_91 = shr(shout_r, 16) @[Bitwise.scala 103:21]
    node _T_92 = and(_T_91, _T_90) @[Bitwise.scala 103:31]
    node _T_93 = bits(shout_r, 15, 0) @[Bitwise.scala 103:46]
    node _T_94 = shl(_T_93, 16) @[Bitwise.scala 103:65]
    node _T_95 = not(_T_90) @[Bitwise.scala 103:77]
    node _T_96 = and(_T_94, _T_95) @[Bitwise.scala 103:75]
    node _T_97 = or(_T_92, _T_96) @[Bitwise.scala 103:39]
    node _T_98 = bits(_T_90, 23, 0) @[Bitwise.scala 102:28]
    node _T_99 = shl(_T_98, 8) @[Bitwise.scala 102:47]
    node _T_100 = xor(_T_90, _T_99) @[Bitwise.scala 102:21]
    node _T_101 = shr(_T_97, 8) @[Bitwise.scala 103:21]
    node _T_102 = and(_T_101, _T_100) @[Bitwise.scala 103:31]
    node _T_103 = bits(_T_97, 23, 0) @[Bitwise.scala 103:46]
    node _T_104 = shl(_T_103, 8) @[Bitwise.scala 103:65]
    node _T_105 = not(_T_100) @[Bitwise.scala 103:77]
    node _T_106 = and(_T_104, _T_105) @[Bitwise.scala 103:75]
    node _T_107 = or(_T_102, _T_106) @[Bitwise.scala 103:39]
    node _T_108 = bits(_T_100, 27, 0) @[Bitwise.scala 102:28]
    node _T_109 = shl(_T_108, 4) @[Bitwise.scala 102:47]
    node _T_110 = xor(_T_100, _T_109) @[Bitwise.scala 102:21]
    node _T_111 = shr(_T_107, 4) @[Bitwise.scala 103:21]
    node _T_112 = and(_T_111, _T_110) @[Bitwise.scala 103:31]
    node _T_113 = bits(_T_107, 27, 0) @[Bitwise.scala 103:46]
    node _T_114 = shl(_T_113, 4) @[Bitwise.scala 103:65]
    node _T_115 = not(_T_110) @[Bitwise.scala 103:77]
    node _T_116 = and(_T_114, _T_115) @[Bitwise.scala 103:75]
    node _T_117 = or(_T_112, _T_116) @[Bitwise.scala 103:39]
    node _T_118 = bits(_T_110, 29, 0) @[Bitwise.scala 102:28]
    node _T_119 = shl(_T_118, 2) @[Bitwise.scala 102:47]
    node _T_120 = xor(_T_110, _T_119) @[Bitwise.scala 102:21]
    node _T_121 = shr(_T_117, 2) @[Bitwise.scala 103:21]
    node _T_122 = and(_T_121, _T_120) @[Bitwise.scala 103:31]
    node _T_123 = bits(_T_117, 29, 0) @[Bitwise.scala 103:46]
    node _T_124 = shl(_T_123, 2) @[Bitwise.scala 103:65]
    node _T_125 = not(_T_120) @[Bitwise.scala 103:77]
    node _T_126 = and(_T_124, _T_125) @[Bitwise.scala 103:75]
    node _T_127 = or(_T_122, _T_126) @[Bitwise.scala 103:39]
    node _T_128 = bits(_T_120, 30, 0) @[Bitwise.scala 102:28]
    node _T_129 = shl(_T_128, 1) @[Bitwise.scala 102:47]
    node _T_130 = xor(_T_120, _T_129) @[Bitwise.scala 102:21]
    node _T_131 = shr(_T_127, 1) @[Bitwise.scala 103:21]
    node _T_132 = and(_T_131, _T_130) @[Bitwise.scala 103:31]
    node _T_133 = bits(_T_127, 30, 0) @[Bitwise.scala 103:46]
    node _T_134 = shl(_T_133, 1) @[Bitwise.scala 103:65]
    node _T_135 = not(_T_130) @[Bitwise.scala 103:77]
    node _T_136 = and(_T_134, _T_135) @[Bitwise.scala 103:75]
    node shout_l = or(_T_132, _T_136) @[Bitwise.scala 103:39]
    node _T_137 = eq(io.fn, UInt<3>("h07")) @[alu.scala 60:15]
    node _T_138 = and(io.in1, io.in2) @[alu.scala 60:35]
    node _T_139 = eq(io.fn, UInt<3>("h06")) @[alu.scala 61:15]
    node _T_140 = or(io.in1, io.in2) @[alu.scala 61:35]
    node _T_141 = eq(io.fn, UInt<3>("h04")) @[alu.scala 62:15]
    node _T_142 = xor(io.in1, io.in2) @[alu.scala 62:35]
    node _T_143 = mux(_T_141, _T_142, io.in1) @[alu.scala 62:8]
    node _T_144 = mux(_T_139, _T_140, _T_143) @[alu.scala 61:8]
    node bitwise_logic = mux(_T_137, _T_138, _T_144) @[alu.scala 60:8]
    node _T_145 = eq(io.fn, UInt<1>("h00")) @[alu.scala 67:15]
    node _T_146 = eq(io.fn, UInt<4>("h08")) @[alu.scala 67:36]
    node _T_147 = or(_T_145, _T_146) @[alu.scala 67:27]
    node _T_148 = eq(io.fn, UInt<4>("h0a")) @[alu.scala 68:15]
    node _T_149 = eq(io.fn, UInt<4>("h0b")) @[alu.scala 68:36]
    node _T_150 = or(_T_148, _T_149) @[alu.scala 68:27]
    node _T_151 = eq(io.fn, UInt<3>("h05")) @[alu.scala 69:15]
    node _T_152 = eq(io.fn, UInt<4>("h0d")) @[alu.scala 69:36]
    node _T_153 = or(_T_151, _T_152) @[alu.scala 69:27]
    node _T_154 = eq(io.fn, UInt<1>("h01")) @[alu.scala 70:15]
    node _T_155 = mux(_T_154, shout_l, bitwise_logic) @[alu.scala 70:8]
    node _T_156 = mux(_T_153, shout_r, _T_155) @[alu.scala 69:8]
    node _T_157 = mux(_T_150, less, _T_156) @[alu.scala 68:8]
    node out_xpr_length = mux(_T_147, sum, _T_157) @[alu.scala 67:8]
    node _T_158 = bits(out_xpr_length, 31, 0) @[alu.scala 73:27]
    io.out <= _T_158 @[alu.scala 73:10]
    io.adder_out <= sum @[alu.scala 74:16]
    
