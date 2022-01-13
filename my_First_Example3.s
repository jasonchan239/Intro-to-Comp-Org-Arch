		AREA my_First_Example3, CODE, READONLY 
		ENTRY 
		LDR r0, =0x12345678 
		LDR r1, =ppp 
		LDR r2, ppp 
		ADR r3, ppp 
p 		B p 
		AREA my_First_Example3, DATA, READONLY 
ppp 	DCD 0xFFFF 
		END 