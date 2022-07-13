DATA SEGMENT
    a DB 06H,14H,24H,46H,31H,67H,70H,83H,86H,11H  
DATA ENDS
.CODE
START:
    MOV AX,@DATA
    MOV DS, AX  
    MOV CH, 09H 
    

LABEL3: 
    MOV CL, 09H
    LEA SI, a
    
    
LABEL2:   
    MOV AL, [SI]
    MOV BL, [SI+1]
    CMP AL, BL
    JC LABEL1
    MOV DL, [SI+1]
    XCHG [SI], DL
    MOV [SI+1], DL
    
LABEL1:
    INC SI
    DEC CL
    JNZ LABEL2  
    DEC CH
    JNZ LABEL3 
    MOV AH,4CH
    INT 21H
CODE ENDS
END START