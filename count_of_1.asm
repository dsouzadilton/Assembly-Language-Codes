DATA SEGMENT
    num DB 56
    ans DB ?
DATA ENDS
.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    MOV AL, num
    MOV BL, 00H   
    MOV CX, 08H
    UP:
    ROL AL, 1
    JNC NEXT:
    INC BL
    NEXT: 
    DEC CX
    JNZ UP
    MOV ans, BL
CODE ENDS
END START      