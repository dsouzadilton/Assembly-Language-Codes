DATA SEGMENT
    num DW 2525H, 2025H
    ans DD ?
    
DATA ENDS
.CODE
START:
        MOV AX,DATA
        MOV DS,AX
        LEA SI,num
        MOV AX,[SI]
        INC SI
        INC SI
        MOV BX,[SI]
        MUL BX
        MOV CX,AX
        LEA SI,ANS
        MOV [SI],AX
        MOV [SI+2],DX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
        