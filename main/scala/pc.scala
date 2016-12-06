import chisel3._

class pc extends Module {
  val io = IO(new Bundle {
    val pc_in  = Input(UInt(width= 32))
    val pc_out = Output(UInt(width=32))
  })
  io.pc_out := Reg(next = io.pc_in)
}