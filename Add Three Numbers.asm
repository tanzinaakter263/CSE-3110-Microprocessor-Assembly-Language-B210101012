.model small
.stack 100h
.code
main proc
    
    ;...Input 1st digit...
    mov ah,1
    int 21h
    mov bl,al
    
    ;...Input 2nd digit...
    mov ah,1
    int 21h
    mov bh,al
    
    ;...Input 3rd digit...
    mov ah,1
    int 21h
    mov cl,al
    
    ;...Convert ASCII to numeric values...
    sub bl,48
    sub bh,48
    sub cl,48
    
    ;...Add Three Numbers...
    mov al,bl
    add al,bh
    add al,cl
    
    ;...Convert result to ASCII...
    add al,48
    
    ;...Display the result...
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main