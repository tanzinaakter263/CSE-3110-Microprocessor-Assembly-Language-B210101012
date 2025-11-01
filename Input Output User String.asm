.model small
.stack 100h
.data
a db 'Enter a number $'
b db 'The number is $'
.code
main proc
    mov ax,@data 
    mov ds,ax
    
    
    mov ah,9         
    lea dx,a            ;Display "Enter a number :"
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h             ;New Line
    mov dl,13       
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al           ;Input a single Character
    
    mov ah,2
    mov dl,10
    int 21h             ;New Line
    mov dl,13
    int 21h
    
    mov ah,9            ;Display "The number is:"
    lea dx,b
    int 21h   
    
    mov ah,2
    mov dl,bl          ;Entered the number
    int 21h
    
    mov ah,4Ch
    int 21h 
    main endp
main end
    
    
    
    