;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit alu_rs2_mux : 
  module alu_rs2_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc : UInt<32>, flip imm_s : UInt<32>, flip imm_i : UInt<32>, flip rs2 : UInt<32>, flip rs2_mux_sel : UInt<2>, to_alu_b : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_14 = eq(io.rs2_mux_sel, UInt<2>("h00")) @[alu_rs2_mux.scala 21:57]
    node _T_15 = eq(io.rs2_mux_sel, UInt<2>("h01")) @[alu_rs2_mux.scala 22:57]
    node _T_16 = eq(io.rs2_mux_sel, UInt<2>("h02")) @[alu_rs2_mux.scala 23:57]
    node _T_17 = eq(io.rs2_mux_sel, UInt<2>("h03")) @[alu_rs2_mux.scala 24:57]
    node _T_18 = mux(_T_17, io.rs2, io.rs2) @[Mux.scala 61:16]
    node _T_19 = mux(_T_16, io.imm_i, _T_18) @[Mux.scala 61:16]
    node _T_20 = mux(_T_15, io.imm_s, _T_19) @[Mux.scala 61:16]
    node _T_21 = mux(_T_14, io.pc, _T_20) @[Mux.scala 61:16]
    io.to_alu_b <= _T_21 @[alu_rs2_mux.scala 20:15]
    
