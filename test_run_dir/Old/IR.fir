;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit IR : 
  module IR : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip IR_in : UInt<32>, IR_out : UInt<32>}
    
    io is invalid
    reg T_6 : UInt, clock @[IR.scala 11:19]
    T_6 <= io.IR_in @[IR.scala 11:19]
    io.IR_out <= T_6 @[IR.scala 11:13]
    
