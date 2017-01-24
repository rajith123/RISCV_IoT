package core

import Common._
//import chisel3._
import chisel3.util._
import chisel3.iotesters._
import org.scalatest.{Matchers, FlatSpec}

class ALUUnitTester(c: ALU) extends PeekPokeTester(c) {

  for(i <- 1 to 10) {
    
    val in1 = rnd.nextInt(10)
    val in2 = rnd.nextInt(10)
    val fn  = 4//rnd.nextInt(2)

    var output = 0

    poke(c.io.in1, in1)
    poke(c.io.in2, in2)
    poke(c.io.fn, fn)

    printf("%d %d %d\n", in1, in2, fn)

    step(1)   

    if (fn == 0) {
      output = (in1+in2)
    } else if (fn == 1) {
      output = (in1 << in2)
    } else if (fn == 4) {
      output = (in1 ^ in2)
    } //else if (fn == 5) {
//    output = 
//  } else if (fn == 6) {
//    output = 
//  } 
    
    expect(c.io.out, output)
    //expect(c.io.adder_out, i+j)
    printf("%d \n", output)
  }
}

class ALUTester extends ChiselFlatSpec {
  val backendNames = Array[String]("firrtl", "verilator")
  for ( backendName <- backendNames ) {
    implicit val conf = new Configuration
    "ALU" should s"carry out proper arithmatic and logical operations (with ${backendName})" in {
      Driver(() => new ALU, backendName) {
        c => new ALUUnitTester(c)
      } should be (true)
    }
  }
}
