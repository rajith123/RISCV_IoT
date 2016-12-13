;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit pc_mux : 
  module pc_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc_4 : UInt<32>, flip pc : UInt<32>, flip jmp_br : UInt<32>, flip pc_sel : UInt<4>, to_pc : UInt<32>}
    
    io is invalid
    node T_12 = eq(io.pc_sel, UInt<2>("h00")) @[pc_mux.scala 18:52]
    node T_13 = eq(io.pc_sel, UInt<2>("h01")) @[pc_mux.scala 19:52]
    node T_14 = eq(io.pc_sel, UInt<2>("h02")) @[pc_mux.scala 20:52]
    node T_15 = mux(T_14, io.jmp_br, io.pc_4) @[Mux.scala 61:16]
    node T_16 = mux(T_13, io.pc, T_15) @[Mux.scala 61:16]
    node T_17 = mux(T_12, io.pc_4, T_16) @[Mux.scala 61:16]
    io.to_pc <= T_17 @[pc_mux.scala 17:12]
    
