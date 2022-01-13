	AREA testing, CODE, READONLY 
	ENTRY 
	LDR r1,=0x00000FFF
	MOV r2,#4
	MOV r3,r1,LSL r2
	MOV r3,r1, LSR r2
	MVN r3,r1,LSL r2
	MVN r3,r1,LSR r2
loop B   loop

	END 