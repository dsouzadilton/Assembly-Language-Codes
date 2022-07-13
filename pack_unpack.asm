DATA SEGMENT
    a DB 46H
    num1 DB ?
    num2 DB ?
DATA ENDS
.CODE
START:
    MOV AX,@DATA
    MOV DS, AX  
    LEA SI, a 
    MOV AL, [SI] 
    MOV CL, 04H
    AND AL, 0FH
    MOV BL, AL
    MOV AL, [SI]
    SHR AL, CL
    MOV BH, AL
    LEA SI, num1
    MOV [SI],BH
    LEA SI, num2
    MOV [SI],BL
    MOV AH,4CH
    INT 21H
CODE ENDS
END START