;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit alu_rs1_mux : 
  module alu_rs1_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : UInt<32>, flip imm_u : UInt<32>, flip rs1_mux_sel : UInt<2>, to_alu_a : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_10 = eq(io.rs1_mux_sel, UInt<1>("h00")) @[alu_rs1_mux.scala 15:57]
    node _T_11 = eq(io.rs1_mux_sel, UInt<1>("h01")) @[alu_rs1_mux.scala 16:57]
    node _T_12 = mux(_T_11, io.imm_u, io.rs1) @[Mux.scala 61:16]
    node _T_13 = mux(_T_10, io.rs1, _T_12) @[Mux.scala 61:16]
    io.to_alu_a <= _T_13 @[alu_rs1_mux.scala 14:15]
    
