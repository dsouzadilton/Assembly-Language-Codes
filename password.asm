.8086
.model small

print macro msg
        push ax
        mov ah,09h
        lea dx,msg
        int 21h
        pop ax
endm

.data
        yes db 10,13,"Password Correct$"
        no db 10,13,"Password Incorrect$"  
        pass db "micro123"
        inp db 10 dup<'$'>
        get db 10,13,"Enter the Password: $"
.code
start:  mov ax,@data
        mov ds,ax
        mov es,ax
        mov cx,0008h
        mov di,offset pass
        mov si,offset inp
        print get

lab2:   mov ah,01h
        int 21h
        cmp al,13
        jz lab1
        mov [si],al
        inc si
        jmp lab2
        
lab1:   mov si,offset inp
        repe cmpsb
        jz lab3
        print no
        jmp lab4
        
lab3:   print yes

lab4:   mov ah,4ch
        int 21h
        end
        