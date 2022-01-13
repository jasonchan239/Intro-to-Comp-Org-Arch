		AREA question1, CODE, READONLY
ENTRY  LDR r1, =UPC 			;load the UPC into r1
								
       MOV r0,#Ten				;set a count for loop 1
								;this loop will count the first sum
Loop   LDRB r2,[r1,r0]			;load the next number to be counted into r2
       SUB r2,r2,#0x30			;subtract the number by 0x30 to get the decimal number (0x31-0x30=1)
       ADD r3,r3,r2			;add the number in r2 into r3, collecting the sum of the loop
       SUBS r0,r0,#Two			;decrement the counter
       BNE Loop				;loop back
       ADD r5,r3,r3,LSL #One 	;store sum1 * 3 omtp r5
       MOV r0,#Five				;reset the counter
       MOV r9,#One				;r9 will contain the location of where sum2 will begin
								;Loop2 contians the code to add values for the second sum
Loop2  LDRB r2,[r1,r9]			;load the position into r2
       SUB r2,r2,#0x30			;subtract the number by 0x30 to get the decimal number (0x31-0x30=1)
       ADD r8,r8,r2			;add the number to r8, collecting the sum
       ADD r9,#Two				;increment the position
       SUBS r0,r0,#One			;decrement the counter
       BNE Loop2				;repeat the loop
       ADD r6,r8,r5			;add the two sums into r6
		
       LDRB r2,[r1,#11]		;take the check digit
       SUB r2,r2,#0x30			;convert the ascii digit to decimal
       ADD r6,r2				;add it to r6
       MOV r0,#Ten				;set up r0 as the counter
       MOV r3,#Zero				;r3 is the quotient r4 is remainder
Loop3  SUBS r6,r6,r0			;using repeated subtraction, we will divide the two sums and check digit by 10
       ADD r3,r3,#One			;r3 contains the number of times it has been divided (quotient)
       BPL Loop3				;loop back
       ADD r4,r6,r0			;move the remainder into r4
       SUB r3,r3,#One			;subtract the quotient by 1
       CMP r4,#Zero				;compare if r4==0
       BNE Else				;move to else statement if not equal
       MOV r0,#One				;if r4==0, set r0=1 because it was divisible/no remainder
       B End					;branch to end
Else   MOV r0,#Two				;else set r0=2, since it was not divisible by 10
End							;End...
	
loop b loop
Zero    EQU 0x0
One    	EQU 0x1
Two    	EQU 0x2
Five    EQU 0x5
Ten    	EQU 0x10
UPC DCB "013800150738" ;correct UPC string 
;--Test UPCs--
;UPC2 DCB "060383755577" ;correct UPC string 
;UPC3 DCB "065633454712" ;correct UPC string 
	END