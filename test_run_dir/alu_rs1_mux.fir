;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit alu_rs1_mux : 
  module alu_rs1_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : UInt<32>, flip imm_u : UInt<32>, flip imm_z : UInt<32>, flip rs1_mux_sel : UInt<2>, to_alu_a : UInt<32>}
    
    io is invalid
    node T_12 = eq(io.rs1_mux_sel, UInt<2>("h00")) @[alu_rs1_mux.scala 18:57]
    node T_13 = eq(io.rs1_mux_sel, UInt<2>("h01")) @[alu_rs1_mux.scala 19:57]
    node T_14 = eq(io.rs1_mux_sel, UInt<2>("h02")) @[alu_rs1_mux.scala 20:57]
    node T_15 = mux(T_14, io.imm_z, io.rs1) @[Mux.scala 61:16]
    node T_16 = mux(T_13, io.imm_u, T_15) @[Mux.scala 61:16]
    node T_17 = mux(T_12, io.rs1, T_16) @[Mux.scala 61:16]
    io.to_alu_a <= T_17 @[alu_rs1_mux.scala 17:15]
    
