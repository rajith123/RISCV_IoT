;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-12-12 22:28:40.596, builtAtMillis: 1481581720596
circuit RegFile : 
  module RegFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs_in_adr : UInt<4>, flip rs1_out_addr : UInt<4>, flip rs2_out_addr : UInt<4>, rs1_out_data : UInt<32>, rs2_out_data : UInt<32>, flip rs_in_data : UInt<32>, flip wen : UInt<1>}
    
    io is invalid
    io is invalid
    wire _T_35 : UInt<32>[16] @[RegFile.scala 20:31]
    _T_35 is invalid @[RegFile.scala 20:31]
    _T_35[0] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[1] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[2] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[3] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[4] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[5] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[6] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[7] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[8] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[9] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[10] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[11] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[12] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[13] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[14] <= UInt<32>("h00") @[RegFile.scala 20:31]
    _T_35[15] <= UInt<32>("h00") @[RegFile.scala 20:31]
    reg regFile : UInt<32>[16], clock with : (reset => (reset, _T_35)) @[RegFile.scala 20:20]
    node _T_73 = eq(io.rs1_out_addr, UInt<4>("h00")) @[RegFile.scala 22:43]
    node _T_76 = mux(_T_73, UInt<32>("h00"), regFile[io.rs1_out_addr]) @[RegFile.scala 22:25]
    io.rs1_out_data <= _T_76 @[RegFile.scala 22:19]
    node _T_78 = eq(io.rs2_out_addr, UInt<4>("h00")) @[RegFile.scala 23:43]
    node _T_81 = mux(_T_78, UInt<32>("h00"), regFile[io.rs2_out_addr]) @[RegFile.scala 23:25]
    io.rs2_out_data <= _T_81 @[RegFile.scala 23:19]
    node _T_83 = eq(io.wen, UInt<1>("h01")) @[RegFile.scala 26:16]
    when _T_83 : @[RegFile.scala 26:30]
      regFile[io.rs_in_adr] <= io.rs_in_data @[RegFile.scala 27:31]
      skip @[RegFile.scala 26:30]
    
