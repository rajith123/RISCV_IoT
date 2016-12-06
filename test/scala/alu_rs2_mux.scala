import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class alu_rs2_muxTests(c: alu_rs2_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
    for (s1 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
          for(i2 <- 0 until 2) {
            for(i3 <- 0 until 2) {
              poke(c.io.rs2_mux_sel, s1 << 1 | s0)
              poke(c.io.pc, i0)
              poke(c.io.imm_s, i1)
              poke(c.io.imm_i, i2)
              poke(c.io.rs2, i3)
              step(1)
              val out = if(s1 == 1) {
                          if (s0 == 1) i3 else i2
                        } else {
                          if (s0 == 1) i1 else i0 
                        }
              expect(c.io.to_alu_b, out)
            }
          }
        }
      } 
    }
  }
}

class alu_rs2_muxTester extends ChiselFlatSpec {
  behavior of "alu_rs2_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new alu_rs2_mux())(c => new alu_rs2_muxTests(c)) should be (true)
    }
  }
}