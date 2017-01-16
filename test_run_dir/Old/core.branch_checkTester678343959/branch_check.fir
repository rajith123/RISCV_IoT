;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
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
    node _T_18 = lt(_T_16, _T_17) @[branch_check.scala 18:28]
    node _T_20 = eq(_T_12, UInt<1>("h00")) @[branch_check.scala 14:27]
    node _T_21 = and(_T_20, _T_18) @[branch_check.scala 18:44]
    when _T_21 : @[branch_check.scala 18:44]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 19:18]
      io.br_lt <= UInt<1>("h01") @[branch_check.scala 20:18]
      io.br_ltu <= UInt<1>("h00") @[branch_check.scala 21:18]
      skip @[branch_check.scala 18:44]
    node _T_25 = lt(io.rs1, io.rs2) @[branch_check.scala 22:21]
    node _T_27 = eq(_T_12, UInt<1>("h00")) @[branch_check.scala 14:27]
    node _T_29 = eq(_T_18, UInt<1>("h00")) @[branch_check.scala 18:44]
    node _T_30 = and(_T_27, _T_29) @[branch_check.scala 18:44]
    node _T_31 = and(_T_30, _T_25) @[branch_check.scala 22:30]
    when _T_31 : @[branch_check.scala 22:30]
      io.br_eq <= UInt<1>("h00") @[branch_check.scala 23:18]
      io.br_lt <= UInt<1>("h00") @[branch_check.scala 24:18]
      io.br_ltu <= UInt<1>("h01") @[branch_check.scala 25:18]
      skip @[branch_check.scala 22:30]
    
