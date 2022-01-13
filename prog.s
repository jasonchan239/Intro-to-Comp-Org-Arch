     AREA prog, code, READONLY
     ENTRY
     MOV r3,#2
     LDR r1, =0xCCCCCCCC ;in binary 1100 1100 1100 1100 1100 1100 1100 1100
    
L1   LSL r1,r1,#5
L2   LSL r1,r1,r3
L3   LSR r1,r1,#10
L4   LSR r1,r1,r3
L5   ASR r1,r1,#2   
L6   LSL r1,r1,#15
L7   ASR r1,r1,#16
L8   ASR r1,r1,r3
  
L9   ROR r1,r1,#4   
LA   ROR r1,r1,r3
LB   RRX r1,r1
LC   RRX r1,r1
loop B   loop
     END