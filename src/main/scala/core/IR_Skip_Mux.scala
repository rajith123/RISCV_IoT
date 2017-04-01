package core{
import chisel3._

class IR_skip_Mux extends Module {
  val io = IO(new Bundle {
    val inst_mem		    = Input(UInt(width = 32))
    val IR_skip_Mux_sel 	= Input(UInt(width = 1))
    val to_ir   			= Output(UInt(width = 32))
  })
  io.to_ir := Mux( io.IR_skip_Mux_sel===UInt(1) , UInt(19,32) , io.inst_mem )
}
}
