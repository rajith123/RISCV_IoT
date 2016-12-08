package core{
import chisel3._
import chisel3.util._

class alu_rs2_mux extends Module {
  val io = IO(new Bundle {
    val rs1 		= Input(SInt(width = 32))
    val rs2 		= Input(SInt(width = 32))
    val br_eq 		= Output(UInt(width = 1))
    val br_lt 		= Output(UInt(width = 1))
    val br_ltu 		= Output(UInt(width = 1))
  })
  
  val rs1_u := UInt(rs1)
  val rs2_u := UInt(rs2)

  when(io.rs1 === io.rs2) {
	br_eq := UInt(1,1)
	br_lt := UInt(0,1)
	br_ltu:= UInt(0,1)
  }.elsewhen(io.rs1 < io.rs2){
	br_eq := UInt(0,1)
	br_lt := UInt(1,1)
	br_ltu:= UInt(0,1)	
  }.elsewhen(io.rs1_u < io.rs2_u){
	br_eq := UInt(0,1)
	br_lt := UInt(0,1)
	br_ltu:= UInt(1,1)	
  }
}
}