.8086
.model small

print macro msg
      mov ah,09h
      lea dx,msg
      int 21h
      pop ax
endm

.data
    get db 10,13,"Enter the string: $"
    yes db 10,13,"Entered string is a PALINDROME$"
    no db 10,13,"Entered string is not a PALINDROME$"
    inp db 20 dup ('$')
    rev db 20 dup ('$')

.code
start: mov ax, @data
       mov ds,ax
       mov es,ax
       mov si, offset inp
       mov di, offset rev
       mov cx,0000h
       print get

 lab2: mov ah,01h
       int 21h
       cmp al,13
       jz lab1
       mov [si],al
       inc si
       inc cl
       jmp lab2
       
 lab1: mov bl,cl
 
 lab3: dec si
       mov al,[si]
       mov [di],al
       inc di
       loop lab3
       
       mov cl,bl
       mov di,offset inp
       mov si,offset rev
       
       rep cmpsb
       je lab4
       
       print no
       jmp lab5
       
 lab4: print yes
 lab5: mov ah,4ch
       int 21h
       end