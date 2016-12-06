import chisel3._

class RegFileTests(c: RegFile) extends Tester(c) {

  val test_data = Vec.fill(16) { Reg(init = Uint(0, width = 32)}
  
  for (i <- 0 until 16) {
  
	test_data(i) = rnd.nextInt(c.io.regWidth)
	poke(c.io.wen, 1)
	poke(c.io.rs_in_data,test_data)
	
  }
  
  for (t <- 0 until 4) {

	val test_addr_rs1 = rnd.nextInt(4)
	val test_addr_rs2 = rnd.nextInt(4)
	
	poke(c.io.rs1_out_addr,test_addr_rs1)
	poke(c.io.rs2_out_addr,test_addr_rs2)
	
    step(1)
    expect(c.io.rs1_out_data, test_data(test_addr_rs1))
	expect(c.io.rs2_out_data, test_data(test_addr_rs2))
  }
}
