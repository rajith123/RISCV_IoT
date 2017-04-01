package core
import chisel3._
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class IR_skip_MuxTests(c: IR_skip_Mux) extends PeekPokeTester(c) {

  val i1 = 19
  for (s0 <- 0 until 2) {
      for(i0 <- 0 until 2) {
		  poke(c.io.IR_skip_Mux_sel, s0)
		  poke(c.io.inst_mem, i0)
		  step(1)
		  val out = if (s0 == 1) i1 else i0 
		  expect(c.io.to_ir, out)
      } 
  }
}

class IR_skip_MuxTester extends ChiselFlatSpec {
  behavior of "IR_skip_Mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new IR_skip_Mux())(c => new IR_skip_MuxTests(c)) should be (true)
    }
  }
}
