DATA SEGMENT
    a DB 06H,14H,24H,46H,31H,67H,70H,83H,86H,11H  
    ans DB ?
DATA ENDS
.CODE
START:
    MOV AX,@DATA
    MOV DS, AX  
    LEA SI, a
    MOV AL, [SI]
    MOV CL, 09H
    
LABEL2:
    CMP AL, [SI]
    JNC LABEL1
    MOV AL, [SI]
LABEL1:
    INC SI
    LOOP LABEL2
    LEA SI,ans
    MOV [SI],AL
    MOV AH,4CH
    INT 21H
CODE ENDS
END START