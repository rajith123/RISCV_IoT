;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit alu_rs1_mux : 
  module alu_rs1_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : UInt<32>, flip imm_u : UInt<32>, flip imm_z : UInt<32>, flip rs1_mux_sel : UInt<2>, to_alu_a : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_12 = eq(io.rs1_mux_sel, UInt<2>("h00")) @[alu_rs1_mux.scala 18:57]
    node _T_13 = eq(io.rs1_mux_sel, UInt<2>("h01")) @[alu_rs1_mux.scala 19:57]
    node _T_14 = eq(io.rs1_mux_sel, UInt<2>("h02")) @[alu_rs1_mux.scala 20:57]
    node _T_15 = mux(_T_14, io.imm_z, io.rs1) @[Mux.scala 61:16]
    node _T_16 = mux(_T_13, io.imm_u, _T_15) @[Mux.scala 61:16]
    node _T_17 = mux(_T_12, io.rs1, _T_16) @[Mux.scala 61:16]
    io.to_alu_a <= _T_17 @[alu_rs1_mux.scala 17:15]
    
