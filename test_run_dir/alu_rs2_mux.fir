;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit alu_rs2_mux : 
  module alu_rs2_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc : UInt<32>, flip imm_s : UInt<32>, flip imm_i : UInt<32>, flip rs2 : UInt<32>, flip rs2_mux_sel : UInt<2>, to_alu_b : UInt<32>}
    
    io is invalid
    node T_14 = eq(io.rs2_mux_sel, UInt<2>("h00")) @[alu_rs2_mux.scala 21:57]
    node T_15 = eq(io.rs2_mux_sel, UInt<2>("h01")) @[alu_rs2_mux.scala 22:57]
    node T_16 = eq(io.rs2_mux_sel, UInt<2>("h02")) @[alu_rs2_mux.scala 23:57]
    node T_17 = eq(io.rs2_mux_sel, UInt<2>("h03")) @[alu_rs2_mux.scala 24:57]
    node T_18 = mux(T_17, io.rs2, io.rs2) @[Mux.scala 61:16]
    node T_19 = mux(T_16, io.imm_i, T_18) @[Mux.scala 61:16]
    node T_20 = mux(T_15, io.imm_s, T_19) @[Mux.scala 61:16]
    node T_21 = mux(T_14, io.pc, T_20) @[Mux.scala 61:16]
    io.to_alu_b <= T_21 @[alu_rs2_mux.scala 20:15]
    
