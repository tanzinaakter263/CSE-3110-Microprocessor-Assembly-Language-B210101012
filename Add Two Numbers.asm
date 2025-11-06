.model small
.stack 100h
.code
main proc
    
    ;...Input 1st Character...
    mov ah,1
    int 21h
    mov bl,al
    
    ;...Input 2nd Character...
    mov ah,1
    int 21h
    mov bh,al
    
    ;...Add two digits...
    sub bl,48
    sub bh,48
    add bl,bh
    
    ;...Convert result to ASCII...
    add bl,48
    
    ;...Display yhe result...
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main