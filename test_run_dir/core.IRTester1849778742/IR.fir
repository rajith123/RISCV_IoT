;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit IR : 
  module IR : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip IR_in : UInt<32>, IR_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_7 : UInt, clock @[IR.scala 11:19]
    _T_7 <= io.IR_in @[IR.scala 11:19]
    io.IR_out <= _T_7 @[IR.scala 11:13]
    
