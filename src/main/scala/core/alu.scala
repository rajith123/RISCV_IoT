package core

import chisel3._
import chisel3.util._
import Common._

object ALU
{
  val SZ_ALU_FN = 4
  val ALU_X    = Bits(0)
  val ALU_ADD  = Bits(0)
  val ALU_SLL  = Bits(1)
  val ALU_XOR  = Bits(4)
  val ALU_OR   = Bits(6)
  val ALU_AND  = Bits(7)
  val ALU_SRL  = Bits(5)
  val ALU_SUB  = Bits(10)
  val ALU_SRA  = Bits(11)
  val ALU_SLT  = Bits(12)
  val ALU_SLTU = Bits(14)
  val ALU_COPY1= Bits(8)   

  //def isMulFN(fn: Bits, cmp: Bits) = fn(1,0) === cmp(1,0)
  def isSub(cmd: Bits) = cmd(3)		//checks for SUB, shift left & set less than
  def isSLTU(cmd: Bits) = cmd(0)	//differentiates SLT & SLTU
}
import ALU._

class ALUIO (implicit conf: SodorConfiguration) extends Bundle {	//constructor for IO interface
  //val xprlen = 32
  val fn        = Input(Bits(width = SZ_ALU_FN))
  val in2       = Input(UInt(width = conf.xprlen))
  val in1       = Input(UInt(width = conf.xprlen))
  val out       = Output(UInt(width = conf.xprlen))
  val adder_out = Output(UInt(width = conf.xprlen))
}

class ALU (implicit conf: SodorConfiguration) extends Module
{
  val io = IO(new ALUIO)
  //val xprlen = 32
  val msb = conf.xprlen-1

  // ADD, SUB
  val sum = io.in1 + Mux(isSub(io.fn), -io.in2, io.in2)

  // SLT, SLTU
  val less  = Mux(io.in1(msb) === io.in2(msb), sum(msb),
              Mux(isSLTU(io.fn), io.in2(msb), io.in1(msb)))

  // SLL, SRL, SRA
  val shamt = io.in2(4,0).toUInt
  val shin_r = io.in1(31,0)
  val shin = Mux(io.fn === ALU_SRL  || io.fn === ALU_SRA, shin_r, Reverse(shin_r))
  val shout_r = (Cat(isSub(io.fn) & shin(msb), shin).toSInt >> shamt)(msb,0)
  val shout_l = Reverse(shout_r)

  val bitwise_logic =
    Mux(io.fn === ALU_AND, io.in1 & io.in2,
    Mux(io.fn === ALU_OR,  io.in1 | io.in2,
    Mux(io.fn === ALU_XOR, io.in1 ^ io.in2,
                           io.in1))) // ALU_COPY1

//  val out64 =
  val out_xpr_length =
    Mux(io.fn === ALU_ADD || io.fn === ALU_SUB,  sum,
    Mux(io.fn === ALU_SLT || io.fn === ALU_SLTU, less,
    Mux(io.fn === ALU_SRL || io.fn === ALU_SRA,  shout_r,
    Mux(io.fn === ALU_SLL,                       shout_l,
        bitwise_logic))))

  io.out := out_xpr_length(31,0).toUInt
  io.adder_out := sum
}

