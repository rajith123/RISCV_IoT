import chisel3._

class PC4Tests(c: PC4) extends Tester(c) {
  val test_in = 119
  for (t <- 0 until 4) {
    poke(c.io.PC4_in,     test_in)
    step(1)
    expect(c.io.PC4_out, (test_in << t) & 0xFFFF)
  }
}