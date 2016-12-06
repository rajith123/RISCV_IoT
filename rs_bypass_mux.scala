import chisel3._

class rs_bypass_mux extends Module {
  val io = IO(new Bundle {
    val rs 				= Input(UInt(width = 32))
    val bypass 				= Input(UInt(width = 32))
    val rs_bypass_mux_sel 	= Input(UInt(width = 1))
    val to_rs_mux 			= Output(UInt(width = 32))
  })
  io.to_rs_mux := Mux( rs_bypass_mux_sel , bypass , rs )
}

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class rs_bypass_muxTests(c: rs_bypass_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
		  poke(c.io.rs_bypass_mux_sel, s1 << 1 | s0)
		  poke(c.io.rs, i0)
		  poke(c.io.bypass, i1)
		  step(1)
		  val out = if (s0 == 1) i1 else i0 
		  expect(c.io.to_rs_mux, out)
        }
      } 
  }
}

class rs_bypass_muxTester extends ChiselFlatSpec {
  behavior of "rs_bypass_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new rs_bypass_mux())(c => new rs_bypass_muxTests(c)) should be (true)
    }
  }
}