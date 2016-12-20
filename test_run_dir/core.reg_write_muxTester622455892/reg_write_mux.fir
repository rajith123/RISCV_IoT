;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit reg_write_mux : 
  module reg_write_mux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data_mem : UInt<32>, flip alu_out : UInt<32>, flip pc_4 : UInt<32>, flip reg_write_mux_sel : UInt<2>, to_reg : UInt<32>}
    
    io is invalid
    io is invalid
    node _T_12 = eq(io.reg_write_mux_sel, UInt<2>("h02")) @[reg_write_mux.scala 18:63]
    node _T_13 = eq(io.reg_write_mux_sel, UInt<2>("h00")) @[reg_write_mux.scala 19:63]
    node _T_14 = eq(io.reg_write_mux_sel, UInt<2>("h01")) @[reg_write_mux.scala 20:63]
    node _T_15 = mux(_T_14, io.alu_out, io.alu_out) @[Mux.scala 61:16]
    node _T_16 = mux(_T_13, io.data_mem, _T_15) @[Mux.scala 61:16]
    node _T_17 = mux(_T_12, io.pc_4, _T_16) @[Mux.scala 61:16]
    io.to_reg <= _T_17 @[reg_write_mux.scala 17:13]
    
