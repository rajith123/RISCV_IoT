import chisel3._

class IRTests(c: IR) extends Tester(c) {
  val test_in = 119
  for (t <- 0 until 4) {
    poke(c.io.IR_in,     test_in)
    step(1)
    expect(c.io.IR_out, (test_in << t) & 0xFFFF)
  }
}