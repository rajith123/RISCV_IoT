;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit jmp_br_mux : 
  module jmp_br_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip jmp : UInt<32>, flip br : UInt<32>, flip jmp_br_mux_sel : UInt<1>, to_adder : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_10 = eq(io.jmp_br_mux_sel, UInt<1>("h00")) @[jmp_br_mux.scala 15:60]
    node _T_11 = eq(io.jmp_br_mux_sel, UInt<1>("h01")) @[jmp_br_mux.scala 16:60]
    node _T_12 = mux(_T_11, io.br, io.jmp) @[Mux.scala 61:16]
    node _T_13 = mux(_T_10, io.jmp, _T_12) @[Mux.scala 61:16]
    io.to_adder <= _T_13 @[jmp_br_mux.scala 14:15]
    
