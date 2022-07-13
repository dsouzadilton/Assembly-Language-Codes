.8086
.MODEL SMALL

.DATA
        a DW 2000H
        b DW 4500H
        sum DW ?
        

.CODE
START:  MOV AX,@DATA
        MOV DS,AX
        MOV AX,a
        ADD AX,b
        JNC NEXT
        MOV BH,01H
NEXT:   MOV SUM,AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START