;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit rs_bypass_mux : 
  module rs_bypass_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs : UInt<32>, flip bypass : UInt<32>, flip rs_bypass_mux_sel : UInt<1>, to_rs_mux : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_11 = eq(io.rs_bypass_mux_sel, UInt<1>("h01")) @[rs_bypass_mux.scala 11:44]
    node _T_12 = mux(_T_11, io.bypass, io.rs) @[rs_bypass_mux.scala 11:22]
    io.to_rs_mux <= _T_12 @[rs_bypass_mux.scala 11:16]
    
