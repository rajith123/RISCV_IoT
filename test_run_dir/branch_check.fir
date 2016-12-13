;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit branch_check : 
  module branch_check : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : SInt<32>, flip rs2 : SInt<32>, br_eq : UInt<1>, br_lt : UInt<1>, br_ltu : UInt<1>}
    
    io is invalid
    node T_12 = eq(io.rs1, io.rs2) @[branch_check.scala 14:15]
    when T_12 : @[branch_check.scala 14:27]
      io.br_eq <= UInt<1>("h01") @[branch_check.scala 15:18]
      io.br_lt <= UInt<1>("h00") @[branch_check.scala 16:18]
      io.br_ltu <= UInt<1>("h00") @[branch_check.scala 17:18]
      skip @[branch_check.scala 14:27]
    node T_16 = lt(io.rs1, io.rs2) @[branch_check.scala 18:21]
    node T_18 = eq(T_12, UInt<1>("h00")) @[branch_check.scala 14:27]
    node T_19 = and(T_18, T_16) @[branch_check.scala 18:30]
    when T_19 : @[branch_check.scala 18:30]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 19:18]
      io.br_lt <= UInt<1>("h01") @[branch_check.scala 20:18]
      io.br_ltu <= UInt<1>("h00") @[branch_check.scala 21:18]
      skip @[branch_check.scala 18:30]
    node T_23 = asUInt(io.rs1)
    node T_24 = asUInt(io.rs2)
    node T_25 = lt(T_23, T_24) @[branch_check.scala 22:28]
    node T_27 = eq(T_12, UInt<1>("h00")) @[branch_check.scala 14:27]
    node T_29 = eq(T_16, UInt<1>("h00")) @[branch_check.scala 18:30]
    node T_30 = and(T_27, T_29) @[branch_check.scala 18:30]
    node T_31 = and(T_30, T_25) @[branch_check.scala 22:44]
    when T_31 : @[branch_check.scala 22:44]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 23:18]
      io.br_lt <= UInt<1>("h00") @[branch_check.scala 24:18]
      io.br_ltu <= UInt<1>("h01") @[branch_check.scala 25:18]
      skip @[branch_check.scala 22:44]
    
