;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit PC4 : 
  module PC4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip PC4_in : UInt<32>, PC4_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_6 : UInt, clock @[PC4.scala 11:20]
    _T_6 <= io.PC4_in @[PC4.scala 11:20]
    io.PC4_out <= _T_6 @[PC4.scala 11:14]
    
