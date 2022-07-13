.MODEL SMALL
.STACK
.DATA
    NUM1 DW 003Ch
    NUM2 DW 000Fh
    LCM DW 01 DUP (?)
    
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, NUM1
    MOV BX, NUM2
    MOV CX, AX
    MOV DX, BX
    BACK: CMP AX, BX
    JE RESULT
    JNC AHEAD
    ADD AX, CX
    JMP BACK
    AHEAD: ADD BX, DX
    JMP BACK
    RESULT: MOV LCM, AX
    INT 21h
END