.8086
.MODEL SMALL

.DATA
        a DB 20H
        b DB 45H
        diff DB ?
        

.CODE
START:  MOV AX,@DATA
        MOV DS,AX
        MOV AL,a
        SUB AL,b
        MOV DIFF,AL
        MOV AH,4CH
        INT 21H
CODE ENDS
END START