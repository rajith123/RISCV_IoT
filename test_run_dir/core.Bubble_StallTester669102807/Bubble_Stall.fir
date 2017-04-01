;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit Bubble_Stall : 
  module Bubble_Stall : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip IR : UInt<32>, flip Mem_rdy : UInt<1>, IR_skip_Mux_sel : UInt<1>, to_Stall_Mux0 : UInt<1>}
    
    io is invalid
    io is invalid
    node _T_10 = bits(io.IR, 5, 5) @[Bubble_Stall.scala 12:22]
    node _T_12 = eq(_T_10, UInt<1>("h00")) @[Bubble_Stall.scala 12:16]
    node _T_13 = bits(io.IR, 4, 4) @[Bubble_Stall.scala 12:35]
    node _T_15 = eq(_T_13, UInt<1>("h00")) @[Bubble_Stall.scala 12:29]
    node _T_16 = and(_T_12, _T_15) @[Bubble_Stall.scala 12:26]
    node _T_17 = bits(io.IR, 3, 3) @[Bubble_Stall.scala 12:48]
    node _T_19 = eq(_T_17, UInt<1>("h00")) @[Bubble_Stall.scala 12:42]
    node Mem_rd = and(_T_16, _T_19) @[Bubble_Stall.scala 12:39]
    node _T_20 = bits(io.IR, 6, 6) @[Bubble_Stall.scala 13:28]
    node _T_22 = eq(_T_20, UInt<1>("h00")) @[Bubble_Stall.scala 13:22]
    node _T_23 = bits(io.IR, 5, 5) @[Bubble_Stall.scala 13:40]
    node _T_24 = and(_T_22, _T_23) @[Bubble_Stall.scala 13:32]
    node _T_25 = bits(io.IR, 4, 4) @[Bubble_Stall.scala 13:53]
    node _T_27 = eq(_T_25, UInt<1>("h00")) @[Bubble_Stall.scala 13:47]
    node Mem_wr_valid = and(_T_24, _T_27) @[Bubble_Stall.scala 13:44]
    reg Mem_rdy_old : UInt, clock @[Bubble_Stall.scala 15:24]
    Mem_rdy_old <= io.Mem_rdy @[Bubble_Stall.scala 15:24]
    node _T_30 = eq(Mem_rd, UInt<1>("h01")) @[Bubble_Stall.scala 17:15]
    node _T_32 = eq(Mem_wr_valid, UInt<1>("h01")) @[Bubble_Stall.scala 17:45]
    node _T_33 = or(_T_30, _T_32) @[Bubble_Stall.scala 17:29]
    when _T_33 : @[Bubble_Stall.scala 17:59]
      node _T_35 = eq(io.Mem_rdy, UInt<1>("h00")) @[Bubble_Stall.scala 19:21]
      node _T_37 = eq(Mem_rdy_old, UInt<1>("h01")) @[Bubble_Stall.scala 19:50]
      node _T_38 = and(_T_35, _T_37) @[Bubble_Stall.scala 19:35]
      when _T_38 : @[Bubble_Stall.scala 19:64]
        io.IR_skip_Mux_sel <= UInt<1>("h01") @[Bubble_Stall.scala 20:28]
        io.to_Stall_Mux0 <= UInt<1>("h01") @[Bubble_Stall.scala 21:26]
        skip @[Bubble_Stall.scala 19:64]
      node _T_42 = eq(_T_38, UInt<1>("h00")) @[Bubble_Stall.scala 19:64]
      when _T_42 : @[Bubble_Stall.scala 22:17]
        io.IR_skip_Mux_sel <= UInt<1>("h00") @[Bubble_Stall.scala 23:28]
        io.to_Stall_Mux0 <= UInt<1>("h00") @[Bubble_Stall.scala 24:26]
        skip @[Bubble_Stall.scala 22:17]
      skip @[Bubble_Stall.scala 17:59]
    node _T_46 = eq(_T_33, UInt<1>("h00")) @[Bubble_Stall.scala 17:59]
    when _T_46 : @[Bubble_Stall.scala 26:14]
      io.IR_skip_Mux_sel <= UInt<1>("h00") @[Bubble_Stall.scala 27:26]
      io.to_Stall_Mux0 <= UInt<1>("h00") @[Bubble_Stall.scala 28:24]
      skip @[Bubble_Stall.scala 26:14]
    
