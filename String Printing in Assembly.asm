.model small
.stack 100h
.data
a db 'Bangladesh is my Country $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a             ;Load Effective Address of variable 'a'
    int 21h  
    
    mov ah,4Ch
    int 21h
    main endp
end main
