package core

import chisel3._
import chisel3.core.Bool

class RegFile extends Module {
  val io = IO(new Bundle {
	val regWidth = 32
	val regDepth = 16
    	val rs_in_adr = Input(UInt(width=4))
    	val rs1_out_addr = Input(UInt(width=4))
	val rs2_out_addr = Input(UInt(width=4))
	val rs1_out_data = Output(UInt(width=32))
	val rs2_out_data = Output(UInt(width=32))
	val rs_in_data = Input(UInt(width=32))
	val wen = Input(UInt(width=1))
  })
  //val regFile = Vec.fill(io.regDepth) { Reg(init = UInt(0, width = io.regWidth))}
  val initValue = Seq.fill(16) { UInt(0,32)}
  val regFile = Reg(init = Vec(initValue))
  
  io.rs1_out_data := Mux( io.rs1_out_addr === UInt(0,4) , UInt(0,32) , regFile(io.rs1_out_addr) )
  io.rs2_out_data := Mux( io.rs2_out_addr === UInt(0,4) , UInt(0,32) , regFile(io.rs2_out_addr) )


  when (io.wen === UInt(1,1)){
	regFile(io.rs_in_adr) := io.rs_in_data;
	}

}
