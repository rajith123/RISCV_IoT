;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit IR_skip_Mux : 
  module IR_skip_Mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip inst_mem : UInt<32>, flip IR_skip_Mux_sel : UInt<1>, to_ir : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_9 = eq(io.IR_skip_Mux_sel, UInt<1>("h01")) @[IR_Skip_Mux.scala 10:38]
    node _T_11 = mux(_T_9, UInt<32>("h013"), io.inst_mem) @[IR_Skip_Mux.scala 10:18]
    io.to_ir <= _T_11 @[IR_Skip_Mux.scala 10:12]
    
