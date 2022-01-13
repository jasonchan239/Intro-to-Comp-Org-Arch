 AREA my_First_Example2, CODE, READONLY 
 ENTRY 
 LDR r0, =0x12345678 
 LDR r1, =ppp 
 LDR r2, ppp 
 ADR r3, ppp 
p B p 
ppp DCD 0xFFFF 
 END 