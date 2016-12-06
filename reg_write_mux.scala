import chisel3._

class reg_write_mux extends Module {
  val io = IO(new Bundle {
    val data_mem 			= Input(UInt(width = 32))
    val alu_out 			= Input(UInt(width = 32))
	val pc_4 				= Input(UInt(width = 32))
	val reg_write_mux_sel 	= Input(UInt(width = 2))
    val to_reg 				= Output(UInt(width = 32))	//csr????
  })
  
  val PC4   = UInt(0, 2) 
  val D_MEM = UInt(1, 2)
  val ALU_O = UInt(2, 2)
  io.to_reg := MuxCase(io.alu_out,Array(
					(reg_write_mux_sel == PC_4)  -> io.pc_4,
					(reg_write_mux_sel == D_MEM) -> io.data_mem,
					(reg_write_mux_sel == ALU_O) -> io.alu_out
					))
}

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class reg_write_muxTests(c: reg_write_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
    for (s1 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
          for(i2 <- 0 until 2) {
            for(i3 <- 0 until 2) {
              poke(c.io.reg_write_mux_sel, s1 << 1 | s0)
              poke(c.io.data_mem, i0)
              poke(c.io.alu_out, i1)
              poke(c.io.pc_4, i2)
              poke(c.io.alu_out, i3)
              step(1)
              val out = if(s1 == 1) {
                          if (s0 == 1) i3 else i2
                        } else {
                          if (s0 == 1) i1 else i0 
                        }
              expect(c.io.to_reg, out)
            }
          }
        }
      } 
    }
  }
}

class reg_write_muxTester extends ChiselFlatSpec {
  behavior of "reg_write_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new reg_write_mux())(c => new reg_write_muxTests(c)) should be (true)
    }
  }
}