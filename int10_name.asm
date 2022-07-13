.8086
.MODEL SMALL

.DATA
    msg DB 'Dilton Dsouza','$'
    var1 DB 0fH
    
.CODE
START:  MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,6
        MOV AL,0
        MOV CL,0
        MOV CH,0CH
        MOV DL,4FH
        MOV DH,18H
        MOV BH,20H
        INT 10H
        
        MOV AH,6
        MOV AL,0
        MOV CL,27H
        ADD var1,CL
        SUB var1,2
        MOV CH,0CH
        MOV DL,var1
        MOV DH,0CH
        MOV BH,0CFH
        INT 10H
        
        MOV AH,2
        MOV BH,0
        MOV DL,27H
        MOV DH,0CH
        INT 10H
        
        MOV AH,09H
        MOV DX,OFFSET msg
        INT 21H
        
        MOV AH,4CH
        INT 21H
        END START