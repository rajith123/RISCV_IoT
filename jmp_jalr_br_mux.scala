import chisel3._

class jmp_br_jalr_mux extends Module {
  val io = IO(new Bundle {
    val br_jmp 				= Input(UInt(width = 32))
    val jalr 				= Input(UInt(width = 32))
    val jmp_br_jalr_mux_sel = Input(UInt(width = 1))
    val to_pc_mux 			= Output(UInt(width = 32))
  })
  io.to_pc_mux := Mux( jmp_br_jalr_mux_sel , jalr , br_jmp )
}

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class pc_muxTests(c: jmp_br_jalr_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
		  poke(c.io.pc_sel, s1 << 1 | s0)
		  poke(c.io.br_jmp, i0)
		  poke(c.io.jalr, i1)
		  step(1)
		  val out = if (s0 == 1) i1 else i0 
		  expect(c.io.to_pc_mux, out)
        }
      } 
  }
}

class jmp_br_jalr_muxTester extends ChiselFlatSpec {
  behavior of "jmp_br_jalr_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new jmp_br_jalr_mux())(c => new jmp_br_jalr_muxTests(c)) should be (true)
    }
  }
}