package core{
import chisel3._
import chisel3.util._

class alu_rs2_mux extends Module {
  val io = IO(new Bundle {
    val pc 		= Input(UInt(width = 32))
    val imm_s 		= Input(UInt(width = 32))
    val imm_i 		= Input(UInt(width = 32))
    val rs2 		= Input(UInt(width = 32))
    val rs2_mux_sel 	= Input(UInt(width = 2))
    val to_alu_b 	= Output(UInt(width = 32))
  })
  
  val PC_SEL    	= UInt(0, 2) 
  val IMMS 		= UInt(1, 2)
  val IMMI 		= UInt(2, 2)
  val R2   		= UInt(3, 2) 
  
  io.to_alu_b := MuxCase(io.rs2,Array(
					(io.rs2_mux_sel === PC_SEL) 	-> io.pc,
					(io.rs2_mux_sel === IMMS) 	-> io.imm_s,
					(io.rs2_mux_sel === IMMI)	-> io.imm_i,
					(io.rs2_mux_sel === R2) 	-> io.rs2
					))
}
}
