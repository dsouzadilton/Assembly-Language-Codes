.8086
.MODEL SMALL

.DATA
        a DW 4020H
        b DW 4000H
        diff DD ?
        

.CODE
START:  MOV AX,@DATA
        MOV DS,AX
        MOV AX,a
        SUB AX,b
        MOV DIFF,AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START 