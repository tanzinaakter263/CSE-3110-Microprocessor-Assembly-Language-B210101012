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
    
    ;...Convert ASCII to numeric value...
    sub bl,48
    sub bh,48
    
    ;...Perform Subtraction...
    mov al,bl
    sub al,bh
    
    ;...Convert Resukt to ASCII...
    add al,48
    
    ;...Display Result...
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main