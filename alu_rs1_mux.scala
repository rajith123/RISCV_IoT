import chisel3._

class alu_rs1_mux extends Module {
  val io = IO(new Bundle {
    val rs1			= Input(UInt(width = 32))
    val imm_u 		= Input(UInt(width = 32))
	val imm_z 		= Input(UInt(width = 32))
	val rs1_mux_sel = Input(UInt(width = 2))
    val to_alu_a 	= Output(UInt(width = 32))
  })
  val R1   	= UInt(0, 2) 
  val IMMU 	= UInt(1, 2)
  val IMMZ 	= UInt(2, 2)
  
  io.to_alu_a := MuxCase(io.rs1,Array(
					(rs1_mux_sel == R1)   -> io.rs1,
					(rs1_mux_sel == IMMU) -> io.imm_u,
					(rs1_mux_sel == IMMZ) -> io.imm_z
					))
}

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class alu_rs1_muxTests(c: alu_rs1_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
    for (s1 <- 0 until 2) {
      for(i0 <- 0 until 2) {
        for(i1 <- 0 until 2) {
          for(i2 <- 0 until 2) {
            for(i3 <- 0 until 2) {
              poke(c.io.rs2_mux_sel, s1 << 1 | s0)
              poke(c.io.rs1, i0)
              poke(c.io.imm_u, i1)
              poke(c.io.imm_z, i2)
              poke(c.io.rs1, i3)
              step(1)
              val out = if(s1 == 1) {
                          if (s0 == 1) i3 else i2
                        } else {
                          if (s0 == 1) i1 else i0 
                        }
              expect(c.io.to_alu_a, out)
            }
          }
        }
      } 
    }
  }
}

class alu_rs2_muxTester extends ChiselFlatSpec {
  behavior of "alu_rs1_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new alu_rs1_mux())(c => new alu_rs1_muxTests(c)) should be (true)
    }
  }
}