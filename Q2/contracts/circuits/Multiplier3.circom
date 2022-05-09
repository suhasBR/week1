pragma circom 2.0.0;
include "HelloWorld.circom";

// [assignment] Modify the circuit below to perform a multiplication of three signals

template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;  

   //create instances of Multiplier2 from HelloWorld.circom to multiply 2 numbers and chain the operation to multiply 3 numbers
   component m1 = Multiplier2();
   component m2 = Multiplier2();

   //constraints
   m1.a <== a;
   m1.b <== b;
   m2.a <== m1.c;
   m2.b <== c;
   d <== m2.c;



}

component main = Multiplier3();