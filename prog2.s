	AREA prog2, CODE, READWRITE
	ENTRY
	subgt r0,r0,r1
	LDR r0,=AAA1
	LDRB r2,[r0],#4
	LDRB r3,[r0],#4
Loop B Loop
AAA0 DCW 0x1020, 0x3040
AAA1 DCW 0x5060
AAA2 DCW 0x7080, 0x90A0, 0xD0E0, 0xF0FF
	END