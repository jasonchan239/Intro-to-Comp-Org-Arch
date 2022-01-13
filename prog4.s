        AREA prog4, CODE, READWRITE
        ENTRY
        LDR SP, =STACK
        MOV r0, #0x11
        MOV r1, #0x22
PUSH_R0 str r0,[sp,#-4]!
PUSH_R1 str r1,[sp,#-4]!
POP_R0  ldr r0,[sp],#4
POP_R1  ldr r1,[sp],#4
Loop B Loop
      space 32
STACK DCD 0x0
      space 32
     END