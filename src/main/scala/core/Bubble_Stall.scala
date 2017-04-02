package core{
import chisel3._

class Bubble_Stall extends Module {
  val io = IO(new Bundle {
    val IR		    = Input(UInt(width = 32))
    val Mem_rdy = Input(UInt(width = 1))
    val IR_skip_Mux_sel 	= Output(UInt(width = 1))
    val to_Stall_Mux0   			= Output(UInt(width = 1))
  })
  
  val Mem_rd = !io.IR(5) && !io.IR(4) && !io.IR(3)
  val Mem_wr_valid = !io.IR(6) && io.IR(5) && !io.IR(4)

  val Mem_rdy_old = Reg(next = io.Mem_rdy)
  
  when(Mem_rd === UInt(1,1) || Mem_wr_valid === UInt(1,1)){
      
    when(io.Mem_rdy === UInt(0,1) && Mem_rdy_old === UInt(1,1)){
        io.IR_skip_Mux_sel := UInt(1,1)
        io.to_Stall_Mux0 := UInt(1,1)
    }.otherwise {
        io.IR_skip_Mux_sel := UInt(0,1)
        io.to_Stall_Mux0 := UInt(0,1)
    }
  }.otherwise{
      io.IR_skip_Mux_sel := UInt(0,1)
      io.to_Stall_Mux0 := UInt(0,1)
  }
   
  
}
}
