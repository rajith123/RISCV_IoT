;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit pc : 
  module pc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc_in : UInt<32>, pc_out : UInt<32>}
    
    io is invalid
    io is invalid
    reg _T_6 : UInt, clock @[pc.scala 9:19]
    _T_6 <= io.pc_in @[pc.scala 9:19]
    io.pc_out <= _T_6 @[pc.scala 9:13]
    
