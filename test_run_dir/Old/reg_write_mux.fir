;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit reg_write_mux : 
  module reg_write_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data_mem : UInt<32>, flip alu_out : UInt<32>, flip pc_4 : UInt<32>, flip reg_write_mux_sel : UInt<2>, to_reg : UInt<32>}
    
    io is invalid
    node T_12 = eq(io.reg_write_mux_sel, UInt<2>("h02")) @[reg_write_mux.scala 18:63]
    node T_13 = eq(io.reg_write_mux_sel, UInt<2>("h00")) @[reg_write_mux.scala 19:63]
    node T_14 = eq(io.reg_write_mux_sel, UInt<2>("h01")) @[reg_write_mux.scala 20:63]
    node T_15 = mux(T_14, io.alu_out, io.alu_out) @[Mux.scala 61:16]
    node T_16 = mux(T_13, io.data_mem, T_15) @[Mux.scala 61:16]
    node T_17 = mux(T_12, io.pc_4, T_16) @[Mux.scala 61:16]
    io.to_reg <= T_17 @[reg_write_mux.scala 17:13]
    
