package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class imm_extTests(c: imm_ext) extends PeekPokeTester(c) {
  for (t <- 0 until 1) {
    val rnd0 = rnd.nextInt(32)
    poke(c.io.ir_in, rnd0)
    step(1)
    val imm_i = rnd0(31, 20) 
    val imm_s = Cat(rnd0(31, 25), rnd0(11,7))
    val imm_b = Cat(rnd0(31), rnd0(7), rnd0(30,25), rnd0(11,8))
    val imm_u = rnd0(31, 12)
    val imm_j = Cat(rnd0(31), rnd0(19,12), rnd0(20), rnd0(30,21))
    val imm_z = Cat(Fill(UInt(0), 27), rnd0(19,15))
    
    // sign-extend immediates
    val imm_i_ext = Cat(Fill(imm_i(11), 20), imm_i)
    val imm_s_ext = Cat(Fill(imm_s(11), 20), imm_s)
    val imm_b_ext = Cat(Fill(imm_b(11), 19), imm_b, UInt(0))
    val imm_u_ext = Cat(imm_u, Fill(UInt(0), 12))
    val imm_j_ext = Cat(Fill(imm_j(19), 11), imm_j, UInt(0)) 
		
	expect(	c.io.imm_i_sext ,imm_i_ext )
	expect(	c.io.imm_s_sext ,imm_s_ext )
	expect(	c.io.imm_b_sext ,imm_b_ext )
	expect(	c.io.imm_u_sext ,imm_u_ext )
	expect(	c.io.imm_j_sext ,imm_j_ext )
  }                     
}

class imm_extTester extends ChiselFlatSpec {
  behavior of "imm_ext"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new imm_ext())(c => new imm_extTests(c)) should be (true)
    }
  }
}