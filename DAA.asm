DATA SEGMENT
    num1 DB 22H
    num2 DB 33H
    ans DB ?
DATA ENDS
.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    MOV AL, num1
    ADD AL, num2
    DAA 
    MOV ans, AL
CODE ENDS
END START