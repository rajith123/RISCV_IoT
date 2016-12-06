import chisel3._

class pc_mux extends Module {
  val io = IO(new Bundle {
    val pc_4 	= Input(UInt(width = 32))
    val pc 		= Input(UInt(width = 32))
    val jmp_br 	= Input(UInt(width = 32))
    val pc_sel 	= Input(UInt(width = 4))	
    val to_pc 	= Output(UInt(width = 32))
  })

  val PC4   	= UInt(0, 2) 
  val PC_STALL 	= UInt(1, 2)
  val JMPBR 	= UInt(2, 2)
  io.to_pc := MuxCase(io.pc_4,Array(
					(pc_sel == PC4)  	 -> io.pc_4,
					(pc_sel == PC_STALL) -> io.pc,
					(pc_sel == JMPBR) 	 -> io.jmp_br
					))
}


import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class pc_muxTests(c: pc_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
    for (s1 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
          for(i2 <- 0 until 2) {
            for(i3 <- 0 until 2) {
              poke(c.io.pc_sel, s1 << 1 | s0)
              poke(c.io.pc_4, i0)
              poke(c.io.pc, i1)
              poke(c.io.jmp_br, i2)
              poke(c.io.pc_4, i3)
              step(1)
              val out = if(s1 == 1) {
                          if (s0 == 1) i3 else i2
                        } else {
                          if (s0 == 1) i1 else i0 
                        }
              expect(c.io.to_pc, out)
            }
          }
        }
      } 
    }
  }
}

class pc_muxTester extends ChiselFlatSpec {
  behavior of "pc_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new pc_mux())(c => new pc_muxTests(c)) should be (true)
    }
  }
}