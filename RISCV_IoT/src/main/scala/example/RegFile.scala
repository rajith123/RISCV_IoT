package core

import chisel3._

class RegFile extends Module {
  val io = IO(new Bundle {
	val regWidth = 32
	val regDepth = 16
    	val rs_in_adr = Input(UInt(width=4))
    	val rs1_out_addr = Input(UInt(width=4))
	val rs2_out_addr = Input(UInt(width=4))
	val rs1_out_data = Output(Uint(width=32))
	val rs2_out_data = Output(Uint(width=32))
	val rs_in_data = Input(Uint(width=32))
	val wen = Input(Uint(width=1))
  })
  val regFile = Vec.fill(regDepth) { Reg(init = Uint(0, width = regWidth))}
  
  rs1_out_data := regFile(rs1_out_addr)
  rs2_out_data := regFile(rs2_out_addr)
  
  when (wen){
	regFile(rs_in_adr) := rs_in_data;
	}

}
