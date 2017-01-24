package Common
{
import chisel3._
//import Node._

//import Constants._
   
case class Configuration()
{
   val xprlen = 32
   val nxpr = 32
   //val nxprbits = log2Up(nxpr)
   val nxprbits = 5
   val rvc = false
   val vm = false
}


}
