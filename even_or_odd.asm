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
    ROR AL, 1
    JNC NEXT:
    INC BL
    NEXT: 
    MOV ans, BL
CODE ENDS
END START