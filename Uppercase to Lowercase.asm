.model small
.stack 100h
.code
main proc
    ;...Input an uppercase character...
    mov ah,1
    int 21h
    add al,32
    
    ;...Display the lowercase character...
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main