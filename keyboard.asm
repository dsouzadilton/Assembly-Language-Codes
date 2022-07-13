.8086
.model small

.data
    msg1 db 10,13, 'Enter the number$';
    sps db 10,13,'$'
    msg2 db ':$'
    msg3 db 10,13,10,13,'Grand Total:'
    arrn db 06 dup<00h>
    len db 06h
    gt dw 0000h

.code
start: mov ax,@data
    mov ds,ax
    mov ah,09h
    lea dx,msg1
    int 21h
    lea si,arrn
    mov cl,len
    mov bl,01h
bk1: mov ah,09h
    lea dx,sps
    int 21h
    mov ah ,02h
    mov dl,bl
    add dl,30h
    int 21h
    inc bl
    mov ah,09h
    lea dx,msg2
    int 21h
    call getno
    mov [si],al
    inc si
    dec cl
    jnz bk1
calc: lea si,arrn
    mov cl,len
    mov ax,gt
bk2: add al,[si]
    daa
    jnc skp2
    mov bh,al
    mov al,ah
    add al,01h
    daa
    mov ah,al
    mov al,bh
skp2: inc si
    dec cl
    jnz bk2
    mov gt,ax
show: mov ah,09h
    lea dx,msg3
    int 21h
    lea si,gt
    inc si
    call display
    dec si
    call display
    mov ah,4ch
    int 21h
proc getno
    push cx
    mov ah,01h
    int 21h
    sub al,30h
    cmp al,09h
    jle g1
    sub al,07h
g1: mov cl,04h
    rol al,cl
    mov ch,al
    mov ah,01h
    int 21h
    sub al,30h
    cmp al,09h
    jle g2
    sub al,07h
g2: add al,ch
    pop cx
    ret
endp getno
proc display
    push cx
    mov al,[si]
    and al,0f0h
    mov cl,04h
    rol al,cl
    add al,30h
    cmp al,39h
    jle p1
    add al,07h
p1: mov ah,02h
    mov dl,al
    int 21h
    mov al,[si]
    and al,0fh
    add al,30h
    cmp al,39h
    jle p2
    add al,07h
p2: mov ah,02h
    mov dl,al
    int 21h
    pop cx
    ret
endp display
end start