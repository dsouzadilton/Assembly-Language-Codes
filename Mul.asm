DATA SEGMENT
    num DB 25H, 20H
    ans DW ?
    
DATA ENDS
.CODE
START:
        MOV AX,DATA
        MOV DS,AX
        LEA SI,num
        MOV AL,[SI]
        INC SI
        MOV BL,[SI]
        MUL BL
        LEA SI,ANS
        MOV [SI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
        