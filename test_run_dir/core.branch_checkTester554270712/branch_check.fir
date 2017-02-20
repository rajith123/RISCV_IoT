;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit branch_check : 
  module branch_check : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : UInt<32>, flip rs2 : UInt<32>, br_eq : UInt<1>, br_lt : UInt<1>, br_ltu : UInt<1>}
    
    io is invalid
    io is invalid
    node _T_12 = eq(io.rs1, io.rs2) @[branch_check.scala 14:15]
    when _T_12 : @[branch_check.scala 14:27]
      io.br_eq <= UInt<1>("h01") @[branch_check.scala 15:18]
      io.br_lt <= UInt<1>("h00") @[branch_check.scala 16:18]
      io.br_ltu <= UInt<1>("h00") @[branch_check.scala 17:18]
      skip @[branch_check.scala 14:27]
    node _T_16 = asSInt(io.rs1)
    node _T_17 = asSInt(io.rs2)
    node _T_18 = lt(_T_16, _T_17) @[branch_check.scala 19:22]
    when _T_18 : @[branch_check.scala 19:38]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 20:18]
      io.br_lt <= UInt<1>("h01") @[branch_check.scala 21:18]
      io.br_ltu <= UInt<1>("h00") @[branch_check.scala 22:18]
      skip @[branch_check.scala 19:38]
    node _T_22 = lt(io.rs1, io.rs2) @[branch_check.scala 24:15]
    when _T_22 : @[branch_check.scala 24:24]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 25:18]
      io.br_lt <= UInt<1>("h00") @[branch_check.scala 26:18]
      io.br_ltu <= UInt<1>("h01") @[branch_check.scala 27:18]
      skip @[branch_check.scala 24:24]
    
