;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit pc : 
  module pc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc_in : UInt<32>, pc_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_7 : UInt, clock @[pc.scala 9:19]
    _T_7 <= io.pc_in @[pc.scala 9:19]
    io.pc_out <= _T_7 @[pc.scala 9:13]
    
