;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.12, builtAtString: 2017-03-24 17:25:51.022, builtAtMillis: 1490376351022
circuit RegFile : 
  module RegFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs_in_adr : UInt<4>, flip rs1_out_addr : UInt<4>, flip rs2_out_addr : UInt<4>, rs1_out_data : UInt<32>, rs2_out_data : UInt<32>, flip rs_in_data : UInt<32>, flip wen : UInt<1>}
    
    io is invalid
    io is invalid
    wire _T_18 : UInt<32>[16] @[RegFile.scala 20:31]
    _T_18 is invalid @[RegFile.scala 20:31]
    _T_18[0] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[1] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[2] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[3] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[4] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[5] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[6] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[7] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[8] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[9] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[10] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[11] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[12] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[13] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[14] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_18[15] <= UInt<32>("h00") @[RegFile.scala 20:31]
    reg regFile : UInt<32>[16], clock with : (reset => (reset, _T_18)) @[RegFile.scala 20:20]
    node _T_126 = eq(io.rs1_out_addr, UInt<4>("h00")) @[RegFile.scala 22:43]
    node _T_131 = mux(_T_126, UInt<32>("h00"), regFile[io.rs1_out_addr]) @[RegFile.scala 22:25]
    io.rs1_out_data <= _T_131 @[RegFile.scala 22:19]
    node _T_133 = eq(io.rs2_out_addr, UInt<4>("h00")) @[RegFile.scala 23:43]
    node _T_138 = mux(_T_133, UInt<32>("h00"), regFile[io.rs2_out_addr]) @[RegFile.scala 23:25]
    io.rs2_out_data <= _T_138 @[RegFile.scala 23:19]
    node _T_140 = eq(io.wen, UInt<1>("h01")) @[RegFile.scala 26:16]
    when _T_140 : @[RegFile.scala 26:30]
      regFile[io.rs_in_adr] <= io.rs_in_data @[RegFile.scala 27:31]
      skip @[RegFile.scala 26:30]
    
