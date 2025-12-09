.model small
.stack 100h
.data
    num1 db 7
    num2 db 4

.code

main proc  
    ;initiaze the data segment register
    mov ax, @data
    mov ds, ax
    
    mov ah, 2	; Output interrupt
    ;check for greater number
    mov bh, num1
    cmp bh, num2   
    jg num1greater ;conditional jump immediately follows cmp statment
    
    mov dl, num2
    add dl, 48
    int 21h
    jmp skipp     ;unconditional jump
    
    num1greater:
    mov dl, num1
    add dl, 48
    int 21h 
    
    skipp:       
    mov ah, 4ch
    int 21h      
       
main endp
end main

