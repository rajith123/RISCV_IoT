;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-10-25 19:48:43.735, builtAtMillis: 1477424923735
circuit RegFile : 
  module RegFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs_in_adr : UInt<4>, flip rs1_out_addr : UInt<4>, flip rs2_out_addr : UInt<4>, rs1_out_data : UInt<32>, rs2_out_data : UInt<32>, flip rs_in_data : UInt<32>, flip wen : UInt<1>}
    
    io is invalid
    wire T_19 : UInt<32>[16] @[RegFile.scala 20:31]
    T_19 is invalid @[RegFile.scala 20:31]
    T_19[0] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[1] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[2] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[3] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[4] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[5] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[6] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[7] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[8] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[9] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[10] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[11] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[12] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[13] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[14] <= UInt<32>("h00") @[RegFile.scala 20:31]
    T_19[15] <= UInt<32>("h00") @[RegFile.scala 20:31]
    reg regFile : UInt<32>[16], clock with : (reset => (reset, T_19)) @[RegFile.scala 20:20]
    io.rs1_out_data <= regFile[io.rs1_out_addr] @[RegFile.scala 22:19]
    io.rs2_out_data <= regFile[io.rs2_out_addr] @[RegFile.scala 23:19]
    node T_23 = eq(io.wen, UInt<1>("h01")) @[RegFile.scala 25:16]
    when T_23 : @[RegFile.scala 25:30]
      regFile[io.rs_in_adr] <= io.rs_in_data @[RegFile.scala 26:31]
      skip @[RegFile.scala 25:30]
    
