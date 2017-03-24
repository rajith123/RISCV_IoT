;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2017-02-17 20:06:28.152, builtAtMillis: 1487361988152
circuit PC_Stall_Decode : 
  module PC_Stall_Decode : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip IR : UInt<32>, flip DataMem_rdy : UInt<1>, PC_MUX_sel0 : UInt<1>}
    
    io is invalid
    io is invalid
    node _T_8 = bits(io.IR, 5, 5) @[PC_Stall_Decode.scala 14:24]
    node _T_10 = eq(_T_8, UInt<1>("h00")) @[PC_Stall_Decode.scala 14:18]
    node _T_11 = bits(io.IR, 4, 4) @[PC_Stall_Decode.scala 14:37]
    node _T_13 = eq(_T_11, UInt<1>("h00")) @[PC_Stall_Decode.scala 14:31]
    node _T_14 = and(_T_10, _T_13) @[PC_Stall_Decode.scala 14:28]
    node _T_15 = bits(io.IR, 3, 3) @[PC_Stall_Decode.scala 14:50]
    node _T_17 = eq(_T_15, UInt<1>("h00")) @[PC_Stall_Decode.scala 14:44]
    node Mem_rd = and(_T_14, _T_17) @[PC_Stall_Decode.scala 14:41]
    node _T_18 = bits(io.IR, 6, 6) @[PC_Stall_Decode.scala 15:30]
    node _T_20 = eq(_T_18, UInt<1>("h00")) @[PC_Stall_Decode.scala 15:24]
    node _T_21 = bits(io.IR, 5, 5) @[PC_Stall_Decode.scala 15:42]
    node _T_22 = and(_T_20, _T_21) @[PC_Stall_Decode.scala 15:34]
    node _T_23 = bits(io.IR, 4, 4) @[PC_Stall_Decode.scala 15:55]
    node _T_25 = eq(_T_23, UInt<1>("h00")) @[PC_Stall_Decode.scala 15:49]
    node Mem_wr_valid = and(_T_22, _T_25) @[PC_Stall_Decode.scala 15:46]
    node _T_26 = bits(io.IR, 6, 6) @[PC_Stall_Decode.scala 18:25]
    node _T_27 = bits(io.IR, 2, 2) @[PC_Stall_Decode.scala 18:37]
    node jmp_jalr = and(_T_26, _T_27) @[PC_Stall_Decode.scala 18:29]
    node _T_28 = bits(io.IR, 6, 6) @[PC_Stall_Decode.scala 19:19]
    node _T_29 = bits(io.IR, 4, 4) @[PC_Stall_Decode.scala 19:32]
    node _T_31 = eq(_T_29, UInt<1>("h00")) @[PC_Stall_Decode.scala 19:26]
    node _T_32 = and(_T_28, _T_31) @[PC_Stall_Decode.scala 19:23]
    node _T_33 = bits(io.IR, 2, 2) @[PC_Stall_Decode.scala 19:45]
    node _T_35 = eq(_T_33, UInt<1>("h00")) @[PC_Stall_Decode.scala 19:39]
    node br = and(_T_32, _T_35) @[PC_Stall_Decode.scala 19:36]
    node _T_37 = eq(Mem_rd, UInt<1>("h01")) @[PC_Stall_Decode.scala 23:21]
    node _T_39 = eq(Mem_wr_valid, UInt<1>("h01")) @[PC_Stall_Decode.scala 23:51]
    node _T_40 = or(_T_37, _T_39) @[PC_Stall_Decode.scala 23:35]
    when _T_40 : @[PC_Stall_Decode.scala 23:65]
      node _T_42 = eq(io.DataMem_rdy, UInt<1>("h00")) @[PC_Stall_Decode.scala 24:33]
      when _T_42 : @[PC_Stall_Decode.scala 24:48]
        io.PC_MUX_sel0 <= UInt<1>("h01") @[PC_Stall_Decode.scala 25:32]
        skip @[PC_Stall_Decode.scala 24:48]
      node _T_45 = eq(io.DataMem_rdy, UInt<1>("h01")) @[PC_Stall_Decode.scala 27:33]
      when _T_45 : @[PC_Stall_Decode.scala 27:48]
        io.PC_MUX_sel0 <= UInt<1>("h00") @[PC_Stall_Decode.scala 28:32]
        skip @[PC_Stall_Decode.scala 27:48]
      skip @[PC_Stall_Decode.scala 23:65]
    node _T_48 = eq(_T_40, UInt<1>("h00")) @[PC_Stall_Decode.scala 23:65]
    when _T_48 : @[PC_Stall_Decode.scala 30:20]
      io.PC_MUX_sel0 <= UInt<1>("h00") @[PC_Stall_Decode.scala 31:28]
      skip @[PC_Stall_Decode.scala 30:20]
    
