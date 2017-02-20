;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit imm_ext : 
  module imm_ext : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ir_in : UInt<32>, imm_i_sext : UInt<32>, imm_s_sext : UInt<32>, imm_b_sext : UInt<32>, imm_u_sext : UInt<32>, imm_j_sext : UInt<32>}
    
    io is invalid
    io is invalid
    node imm_i = bits(io.ir_in, 31, 20) @[imm_ext.scala 15:24]
    node _T_14 = bits(io.ir_in, 31, 25) @[imm_ext.scala 16:28]
    node _T_15 = bits(io.ir_in, 11, 7) @[imm_ext.scala 16:46]
    node imm_s = cat(_T_14, _T_15) @[Cat.scala 30:58]
    node _T_16 = bits(io.ir_in, 31, 31) @[imm_ext.scala 17:28]
    node _T_17 = bits(io.ir_in, 7, 7) @[imm_ext.scala 17:42]
    node _T_18 = bits(io.ir_in, 30, 25) @[imm_ext.scala 17:55]
    node _T_19 = bits(io.ir_in, 11, 8) @[imm_ext.scala 17:72]
    node _T_20 = cat(_T_18, _T_19) @[Cat.scala 30:58]
    node _T_21 = cat(_T_16, _T_17) @[Cat.scala 30:58]
    node imm_b = cat(_T_21, _T_20) @[Cat.scala 30:58]
    node imm_u = bits(io.ir_in, 31, 12) @[imm_ext.scala 18:24]
    node _T_22 = bits(io.ir_in, 31, 31) @[imm_ext.scala 19:28]
    node _T_23 = bits(io.ir_in, 19, 12) @[imm_ext.scala 19:42]
    node _T_24 = bits(io.ir_in, 20, 20) @[imm_ext.scala 19:59]
    node _T_25 = bits(io.ir_in, 30, 21) @[imm_ext.scala 19:73]
    node _T_26 = cat(_T_24, _T_25) @[Cat.scala 30:58]
    node _T_27 = cat(_T_22, _T_23) @[Cat.scala 30:58]
    node imm_j = cat(_T_27, _T_26) @[Cat.scala 30:58]
    node _T_28 = bits(imm_i, 11, 11) @[imm_ext.scala 21:39]
    node _T_29 = bits(_T_28, 0, 0) @[Bitwise.scala 71:15]
    node _T_32 = mux(_T_29, UInt<20>("h0fffff"), UInt<20>("h00")) @[Bitwise.scala 71:12]
    node _T_33 = cat(_T_32, imm_i) @[Cat.scala 30:58]
    io.imm_i_sext <= _T_33 @[imm_ext.scala 21:18]
    node _T_34 = bits(imm_s, 11, 11) @[imm_ext.scala 22:39]
    node _T_35 = bits(_T_34, 0, 0) @[Bitwise.scala 71:15]
    node _T_38 = mux(_T_35, UInt<20>("h0fffff"), UInt<20>("h00")) @[Bitwise.scala 71:12]
    node _T_39 = cat(_T_38, imm_s) @[Cat.scala 30:58]
    io.imm_s_sext <= _T_39 @[imm_ext.scala 22:18]
    node _T_40 = bits(imm_b, 11, 11) @[imm_ext.scala 23:39]
    node _T_41 = bits(_T_40, 0, 0) @[Bitwise.scala 71:15]
    node _T_44 = mux(_T_41, UInt<19>("h07ffff"), UInt<19>("h00")) @[Bitwise.scala 71:12]
    node _T_46 = cat(_T_44, imm_b) @[Cat.scala 30:58]
    node _T_47 = cat(_T_46, UInt<1>("h00")) @[Cat.scala 30:58]
    io.imm_b_sext <= _T_47 @[imm_ext.scala 23:18]
    node _T_52 = mux(UInt<1>("h00"), UInt<12>("h0fff"), UInt<12>("h00")) @[Bitwise.scala 71:12]
    node _T_53 = cat(imm_u, _T_52) @[Cat.scala 30:58]
    io.imm_u_sext <= _T_53 @[imm_ext.scala 24:18]
    node _T_54 = bits(imm_j, 19, 19) @[imm_ext.scala 25:39]
    node _T_55 = bits(_T_54, 0, 0) @[Bitwise.scala 71:15]
    node _T_58 = mux(_T_55, UInt<11>("h07ff"), UInt<11>("h00")) @[Bitwise.scala 71:12]
    node _T_60 = cat(_T_58, imm_j) @[Cat.scala 30:58]
    node _T_61 = cat(_T_60, UInt<1>("h00")) @[Cat.scala 30:58]
    io.imm_j_sext <= _T_61 @[imm_ext.scala 25:18]
    
