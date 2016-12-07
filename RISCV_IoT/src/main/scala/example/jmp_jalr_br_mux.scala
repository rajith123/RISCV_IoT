package core{
import chisel3._

class jmp_br_jalr_mux extends Module {
  val io = IO(new Bundle {
    val br_jmp 				= Input(UInt(width = 32))
    val jalr 				= Input(UInt(width = 32))
    val jmp_br_jalr_mux_sel = Input(UInt(width = 1))
    val to_pc_mux 			= Output(UInt(width = 32))
  })
  io.to_pc_mux := Mux( io.jmp_br_jalr_mux_sel===UInt(1) , io.jalr , io.br_jmp )
}
}
