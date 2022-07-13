.8086
.model small

.data
    Var DW 9999

.code
    mov ax,@DATA
    mov DS,ax
    mov bx,Var
    mov al,bh
    mov ah,00h
    mov cl,10h
    div cl
    mov dh,ah
    mov cl,al
    CALL PRINT
    mov dl,dh
    mov cl,dl
    CALL PRINT
    mov al,bl
    mov ah,00h
    mov cl,10h
    div cl
    mov dh,ah
    mov cl,al
    CALL PRINT
    mov cl,dh
    CALL PRINT
    mov ah, 4ch
    int 21h
    ret
    PRINT PROC
    cmp cl,09
    jle ad
    add cl,07h
ad: add cl,30h
    mov dl,cl
    mov ah,02h
    int 21h
    ret
    PRINT ENDP