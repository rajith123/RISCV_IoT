package core{
import chisel3._
import chisel3.util._

class branch_check extends Module {
  val io = IO(new Bundle {
    val rs1 		= Input(UInt(width = 32))
    val rs2 		= Input(UInt(width = 32))
    val br_eq 		= Output(UInt(width = 1))
    val br_lt 		= Output(UInt(width = 1))
    val br_ltu 		= Output(UInt(width = 1))
  })

  when(io.rs1 === io.rs2) {
	io.br_eq := UInt(1,1)
	io.br_lt := UInt(0,1)
	io.br_ltu:= UInt(0,1)
  }.elsewhen(io.rs1.toSInt < io.rs2.toSInt){
	io.br_eq := UInt(0,1)
	io.br_lt := UInt(1,1)
	io.br_ltu:= UInt(0,1)	
  }.elsewhen(io.rs1 < io.rs2){
	io.br_eq := UInt(0,1)
	io.br_lt := UInt(0,1)
	io.br_ltu:= UInt(1,1)	
  }
}
}
