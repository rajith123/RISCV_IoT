;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit jmp_br_jalr_mux : 
  module jmp_br_jalr_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip br_jmp : UInt<32>, flip jalr : UInt<32>, flip jmp_br_jalr_mux_sel : UInt<1>, to_pc_mux : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_11 = eq(io.jmp_br_jalr_mux_sel, UInt<1>("h01")) @[jmp_jalr_br_mux.scala 11:46]
    node _T_12 = mux(_T_11, io.jalr, io.br_jmp) @[jmp_jalr_br_mux.scala 11:22]
    io.to_pc_mux <= _T_12 @[jmp_jalr_br_mux.scala 11:16]
    
