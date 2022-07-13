DATA SEGMENT
    a DB 04H
    b DB 06H
    ans DB ?
DATA ENDS
.CODE
START:
    MOV AX,@DATA
    MOV DS, AX  
    LEA SI, a 
    MOV AL, [SI] 
    MOV CL, 04H
    SHL AL, CL  
    ADD AL, b
    LEA SI, ans
    MOV [SI], AL
    MOV AH,4CH
    INT 21H
CODE ENDS
END START