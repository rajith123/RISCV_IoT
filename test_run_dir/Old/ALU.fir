;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit ALU : 
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip fn : UInt<4>, flip in2 : UInt<32>, flip in1 : UInt<32>, out : UInt<32>, adder_out : UInt<32>}
    
    io is invalid
    node T_24 = bits(io.fn, 3, 3) @[alu.scala 24:29]
    node T_26 = sub(UInt<1>("h00"), io.in2) @[alu.scala 45:40]
    node T_27 = tail(T_26, 1) @[alu.scala 45:40]
    node T_28 = mux(T_24, T_27, io.in2) @[alu.scala 45:25]
    node T_29 = add(io.in1, T_28) @[alu.scala 45:20]
    node sum = tail(T_29, 1) @[alu.scala 45:20]
    node T_30 = bits(io.in1, 31, 31) @[alu.scala 48:25]
    node T_31 = bits(io.in2, 31, 31) @[alu.scala 48:41]
    node T_32 = eq(T_30, T_31) @[alu.scala 48:31]
    node T_33 = bits(sum, 31, 31) @[alu.scala 48:51]
    node T_34 = bits(io.fn, 0, 0) @[alu.scala 25:30]
    node T_35 = bits(io.in2, 31, 31) @[alu.scala 49:40]
    node T_36 = bits(io.in1, 31, 31) @[alu.scala 49:53]
    node T_37 = mux(T_34, T_35, T_36) @[alu.scala 49:18]
    node less = mux(T_32, T_33, T_37) @[alu.scala 48:18]
    node shamt = bits(io.in2, 4, 0) @[alu.scala 52:21]
    node shin_r = bits(io.in1, 31, 0) @[alu.scala 53:22]
    node T_38 = eq(io.fn, UInt<3>("h05")) @[alu.scala 54:24]
    node T_39 = eq(io.fn, UInt<4>("h0b")) @[alu.scala 54:46]
    node T_40 = or(T_38, T_39) @[alu.scala 54:37]
    node T_43 = shl(UInt<16>("h0ffff"), 16) @[Bitwise.scala 66:47]
    node T_44 = xor(UInt<32>("h0ffffffff"), T_43) @[Bitwise.scala 66:21]
    node T_45 = shr(shin_r, 16) @[Bitwise.scala 67:21]
    node T_46 = and(T_45, T_44) @[Bitwise.scala 67:31]
    node T_47 = bits(shin_r, 15, 0) @[Bitwise.scala 67:46]
    node T_48 = shl(T_47, 16) @[Bitwise.scala 67:65]
    node T_49 = not(T_44) @[Bitwise.scala 67:77]
    node T_50 = and(T_48, T_49) @[Bitwise.scala 67:75]
    node T_51 = or(T_46, T_50) @[Bitwise.scala 67:39]
    node T_52 = bits(T_44, 23, 0) @[Bitwise.scala 66:28]
    node T_53 = shl(T_52, 8) @[Bitwise.scala 66:47]
    node T_54 = xor(T_44, T_53) @[Bitwise.scala 66:21]
    node T_55 = shr(T_51, 8) @[Bitwise.scala 67:21]
    node T_56 = and(T_55, T_54) @[Bitwise.scala 67:31]
    node T_57 = bits(T_51, 23, 0) @[Bitwise.scala 67:46]
    node T_58 = shl(T_57, 8) @[Bitwise.scala 67:65]
    node T_59 = not(T_54) @[Bitwise.scala 67:77]
    node T_60 = and(T_58, T_59) @[Bitwise.scala 67:75]
    node T_61 = or(T_56, T_60) @[Bitwise.scala 67:39]
    node T_62 = bits(T_54, 27, 0) @[Bitwise.scala 66:28]
    node T_63 = shl(T_62, 4) @[Bitwise.scala 66:47]
    node T_64 = xor(T_54, T_63) @[Bitwise.scala 66:21]
    node T_65 = shr(T_61, 4) @[Bitwise.scala 67:21]
    node T_66 = and(T_65, T_64) @[Bitwise.scala 67:31]
    node T_67 = bits(T_61, 27, 0) @[Bitwise.scala 67:46]
    node T_68 = shl(T_67, 4) @[Bitwise.scala 67:65]
    node T_69 = not(T_64) @[Bitwise.scala 67:77]
    node T_70 = and(T_68, T_69) @[Bitwise.scala 67:75]
    node T_71 = or(T_66, T_70) @[Bitwise.scala 67:39]
    node T_72 = bits(T_64, 29, 0) @[Bitwise.scala 66:28]
    node T_73 = shl(T_72, 2) @[Bitwise.scala 66:47]
    node T_74 = xor(T_64, T_73) @[Bitwise.scala 66:21]
    node T_75 = shr(T_71, 2) @[Bitwise.scala 67:21]
    node T_76 = and(T_75, T_74) @[Bitwise.scala 67:31]
    node T_77 = bits(T_71, 29, 0) @[Bitwise.scala 67:46]
    node T_78 = shl(T_77, 2) @[Bitwise.scala 67:65]
    node T_79 = not(T_74) @[Bitwise.scala 67:77]
    node T_80 = and(T_78, T_79) @[Bitwise.scala 67:75]
    node T_81 = or(T_76, T_80) @[Bitwise.scala 67:39]
    node T_82 = bits(T_74, 30, 0) @[Bitwise.scala 66:28]
    node T_83 = shl(T_82, 1) @[Bitwise.scala 66:47]
    node T_84 = xor(T_74, T_83) @[Bitwise.scala 66:21]
    node T_85 = shr(T_81, 1) @[Bitwise.scala 67:21]
    node T_86 = and(T_85, T_84) @[Bitwise.scala 67:31]
    node T_87 = bits(T_81, 30, 0) @[Bitwise.scala 67:46]
    node T_88 = shl(T_87, 1) @[Bitwise.scala 67:65]
    node T_89 = not(T_84) @[Bitwise.scala 67:77]
    node T_90 = and(T_88, T_89) @[Bitwise.scala 67:75]
    node T_91 = or(T_86, T_90) @[Bitwise.scala 67:39]
    node shin = mux(T_40, shin_r, T_91) @[alu.scala 54:17]
    node T_92 = bits(io.fn, 3, 3) @[alu.scala 24:29]
    node T_93 = bits(shin, 31, 31) @[alu.scala 55:41]
    node T_94 = and(T_92, T_93) @[alu.scala 55:35]
    node T_95 = cat(T_94, shin) @[Cat.scala 19:58]
    node T_96 = asSInt(T_95)
    node T_97 = dshr(T_96, shamt) @[alu.scala 55:61]
    node shout_r = bits(T_97, 31, 0) @[alu.scala 55:70]
    node T_100 = shl(UInt<16>("h0ffff"), 16) @[Bitwise.scala 66:47]
    node T_101 = xor(UInt<32>("h0ffffffff"), T_100) @[Bitwise.scala 66:21]
    node T_102 = shr(shout_r, 16) @[Bitwise.scala 67:21]
    node T_103 = and(T_102, T_101) @[Bitwise.scala 67:31]
    node T_104 = bits(shout_r, 15, 0) @[Bitwise.scala 67:46]
    node T_105 = shl(T_104, 16) @[Bitwise.scala 67:65]
    node T_106 = not(T_101) @[Bitwise.scala 67:77]
    node T_107 = and(T_105, T_106) @[Bitwise.scala 67:75]
    node T_108 = or(T_103, T_107) @[Bitwise.scala 67:39]
    node T_109 = bits(T_101, 23, 0) @[Bitwise.scala 66:28]
    node T_110 = shl(T_109, 8) @[Bitwise.scala 66:47]
    node T_111 = xor(T_101, T_110) @[Bitwise.scala 66:21]
    node T_112 = shr(T_108, 8) @[Bitwise.scala 67:21]
    node T_113 = and(T_112, T_111) @[Bitwise.scala 67:31]
    node T_114 = bits(T_108, 23, 0) @[Bitwise.scala 67:46]
    node T_115 = shl(T_114, 8) @[Bitwise.scala 67:65]
    node T_116 = not(T_111) @[Bitwise.scala 67:77]
    node T_117 = and(T_115, T_116) @[Bitwise.scala 67:75]
    node T_118 = or(T_113, T_117) @[Bitwise.scala 67:39]
    node T_119 = bits(T_111, 27, 0) @[Bitwise.scala 66:28]
    node T_120 = shl(T_119, 4) @[Bitwise.scala 66:47]
    node T_121 = xor(T_111, T_120) @[Bitwise.scala 66:21]
    node T_122 = shr(T_118, 4) @[Bitwise.scala 67:21]
    node T_123 = and(T_122, T_121) @[Bitwise.scala 67:31]
    node T_124 = bits(T_118, 27, 0) @[Bitwise.scala 67:46]
    node T_125 = shl(T_124, 4) @[Bitwise.scala 67:65]
    node T_126 = not(T_121) @[Bitwise.scala 67:77]
    node T_127 = and(T_125, T_126) @[Bitwise.scala 67:75]
    node T_128 = or(T_123, T_127) @[Bitwise.scala 67:39]
    node T_129 = bits(T_121, 29, 0) @[Bitwise.scala 66:28]
    node T_130 = shl(T_129, 2) @[Bitwise.scala 66:47]
    node T_131 = xor(T_121, T_130) @[Bitwise.scala 66:21]
    node T_132 = shr(T_128, 2) @[Bitwise.scala 67:21]
    node T_133 = and(T_132, T_131) @[Bitwise.scala 67:31]
    node T_134 = bits(T_128, 29, 0) @[Bitwise.scala 67:46]
    node T_135 = shl(T_134, 2) @[Bitwise.scala 67:65]
    node T_136 = not(T_131) @[Bitwise.scala 67:77]
    node T_137 = and(T_135, T_136) @[Bitwise.scala 67:75]
    node T_138 = or(T_133, T_137) @[Bitwise.scala 67:39]
    node T_139 = bits(T_131, 30, 0) @[Bitwise.scala 66:28]
    node T_140 = shl(T_139, 1) @[Bitwise.scala 66:47]
    node T_141 = xor(T_131, T_140) @[Bitwise.scala 66:21]
    node T_142 = shr(T_138, 1) @[Bitwise.scala 67:21]
    node T_143 = and(T_142, T_141) @[Bitwise.scala 67:31]
    node T_144 = bits(T_138, 30, 0) @[Bitwise.scala 67:46]
    node T_145 = shl(T_144, 1) @[Bitwise.scala 67:65]
    node T_146 = not(T_141) @[Bitwise.scala 67:77]
    node T_147 = and(T_145, T_146) @[Bitwise.scala 67:75]
    node shout_l = or(T_143, T_147) @[Bitwise.scala 67:39]
    node T_148 = eq(io.fn, UInt<3>("h07")) @[alu.scala 59:15]
    node T_149 = and(io.in1, io.in2) @[alu.scala 59:35]
    node T_150 = eq(io.fn, UInt<3>("h06")) @[alu.scala 60:15]
    node T_151 = or(io.in1, io.in2) @[alu.scala 60:35]
    node T_152 = eq(io.fn, UInt<3>("h04")) @[alu.scala 61:15]
    node T_153 = xor(io.in1, io.in2) @[alu.scala 61:35]
    node T_154 = mux(T_152, T_153, io.in1) @[alu.scala 61:8]
    node T_155 = mux(T_150, T_151, T_154) @[alu.scala 60:8]
    node bitwise_logic = mux(T_148, T_149, T_155) @[alu.scala 59:8]
    node T_156 = eq(io.fn, UInt<1>("h00")) @[alu.scala 66:15]
    node T_157 = eq(io.fn, UInt<4>("h0a")) @[alu.scala 66:36]
    node T_158 = or(T_156, T_157) @[alu.scala 66:27]
    node T_159 = eq(io.fn, UInt<4>("h0c")) @[alu.scala 67:15]
    node T_160 = eq(io.fn, UInt<4>("h0e")) @[alu.scala 67:36]
    node T_161 = or(T_159, T_160) @[alu.scala 67:27]
    node T_162 = eq(io.fn, UInt<3>("h05")) @[alu.scala 68:15]
    node T_163 = eq(io.fn, UInt<4>("h0b")) @[alu.scala 68:36]
    node T_164 = or(T_162, T_163) @[alu.scala 68:27]
    node T_165 = eq(io.fn, UInt<1>("h01")) @[alu.scala 69:15]
    node T_166 = mux(T_165, shout_l, bitwise_logic) @[alu.scala 69:8]
    node T_167 = mux(T_164, shout_r, T_166) @[alu.scala 68:8]
    node T_168 = shl(less, 0) @[alu.scala 67:8]
    node T_169 = mux(T_161, T_168, T_167) @[alu.scala 67:8]
    node out_xpr_length = mux(T_158, sum, T_169) @[alu.scala 66:8]
    node T_170 = bits(out_xpr_length, 31, 0) @[alu.scala 72:27]
    io.out <= T_170 @[alu.scala 72:10]
    io.adder_out <= sum @[alu.scala 73:16]
    
