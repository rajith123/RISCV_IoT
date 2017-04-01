;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit PC4 : 
  module PC4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip PC4_in : UInt<32>, PC4_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_7 : UInt, clock @[PC4.scala 11:20]
    _T_7 <= io.PC4_in @[PC4.scala 11:20]
    io.PC4_out <= _T_7 @[PC4.scala 11:14]
    
