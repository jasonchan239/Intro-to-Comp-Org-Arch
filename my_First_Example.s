 AREA my_First_Example, CODE, READONLY 
 ENTRY 
 
 LDR r0, =0x12345678 
 LDR r1, =ppp 
 LDR r2, ppp 
 ADR r3, ppp 
 LSL r4,r3,r2
 LSR r4,r3,r2
 ASR r4,r3,r2
 ROR r4,r3,r2
 LDR r0,=255
 LDR r1,=1
 ADD r1,r1,r1,LSL#3
 ADD r1,r1,r0,ASR#2
p B p 
 AREA my_First_Example, DATA, READONLY 
ppp DCD 0xFFFF 
 END 