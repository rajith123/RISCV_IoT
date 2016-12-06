import chisel3._

class alu_rs1_mux extends Module {
  val io = IO(new Bundle {
    val rs1			= Input(UInt(width = 32))
    val imm_u 		= Input(UInt(width = 32))
	val imm_z 		= Input(UInt(width = 32))
	val rs1_mux_sel = Input(UInt(width = 2))
    val to_alu_a 	= Output(UInt(width = 32))
  })
  val R1   	= UInt(0, 2) 
  val IMMU 	= UInt(1, 2)
  val IMMZ 	= UInt(2, 2)
  
  io.to_alu_a := MuxCase(io.rs1,Array(
					(rs1_mux_sel == R1)   -> io.rs1,
					(rs1_mux_sel == IMMU) -> io.imm_u,
					(rs1_mux_sel == IMMZ) -> io.imm_z
					))
}