        AREA StackTest1, CODE, READONLY
        ENTRY
        ADR   sp,  STACK 
        LDR   r1,  =0x11111111
        LDR   r2,  =0x22222222
        LDR   r3,  =0x33333333
        LDR   r4,  =0x44444444
        STMED sp!, {r2,r4}
        MOV   r1,  #0xAA
        MOV   r2,  #0xBB
        MOV   r3,  #0xCC
        MOV   r4,  #0xDD
        LDMFD sp!, {r3, r1,r2}
LOOP    B     LOOP

        DCD   0, 0, 0, 0
STACK   DCD   0xFFFFFFFF
        DCD   0, 0, 0, 0
        END