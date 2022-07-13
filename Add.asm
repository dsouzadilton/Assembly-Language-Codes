.8086
.MODEL SMALL

.DATA
        a DB 20H
        b DB 45H
        sum DB ?
        

.CODE
START:  MOV AX,@DATA
        MOV DS,AX
        MOV AL,a
        ADD AL,b
        JNC NEXT
        MOV BH,01H
NEXT:   MOV SUM,AL
        MOV AH,4CH
        INT 21H
CODE ENDS
END START