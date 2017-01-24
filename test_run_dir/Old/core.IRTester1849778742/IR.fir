;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit IR : 
  module IR : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip IR_in : UInt<32>, IR_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_6 : UInt, clock @[IR.scala 11:19]
    _T_6 <= io.IR_in @[IR.scala 11:19]
    io.IR_out <= _T_6 @[IR.scala 11:13]
    
