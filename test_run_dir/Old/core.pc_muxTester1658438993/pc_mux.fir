;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit pc_mux : 
  module pc_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc_4 : UInt<32>, flip pc : UInt<32>, flip jmp_br : UInt<32>, flip pc_sel : UInt<4>, to_pc : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_12 = eq(io.pc_sel, UInt<2>("h00")) @[pc_mux.scala 18:52]
    node _T_13 = eq(io.pc_sel, UInt<2>("h01")) @[pc_mux.scala 19:52]
    node _T_14 = eq(io.pc_sel, UInt<2>("h02")) @[pc_mux.scala 20:52]
    node _T_15 = mux(_T_14, io.jmp_br, io.pc_4) @[Mux.scala 61:16]
    node _T_16 = mux(_T_13, io.pc, _T_15) @[Mux.scala 61:16]
    node _T_17 = mux(_T_12, io.pc_4, _T_16) @[Mux.scala 61:16]
    io.to_pc <= _T_17 @[pc_mux.scala 17:12]
    
