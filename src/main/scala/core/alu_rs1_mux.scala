package core{
import chisel3._
import chisel3.util._

class alu_rs1_mux extends Module {
  val io = IO(new Bundle {
    val rs1		= Input(UInt(width = 32))
    val imm_u 		= Input(UInt(width = 32))
    val rs1_mux_sel 	= Input(UInt(width = 1))
    val to_alu_a 	= Output(UInt(width = 32))
  })
  val R1   	= UInt(0, 1) 
  val IMMU 	= UInt(1, 1)
  io.to_alu_a := MuxCase(io.rs1,Array(
					(io.rs1_mux_sel === R1)   -> io.rs1,
					(io.rs1_mux_sel === IMMU) -> io.imm_u
					))
}
}
