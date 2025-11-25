.model small
.stack 100h
.code
main proc
    ;...Input a lowercase letter...
    mov ah,1
    int 21h
    mov bl,al
    
    ;...Convert lowercase to uppercase...
    sub bl,32
    
    ;...Display the uppercase letter...
    mov ah,2
    mov dl,al
    int 21h
    mov ah,4Ch
    int 21h
    main endp
end main