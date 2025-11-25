.model small
.stack 100h
.code
main proc
    ;...Input 1st Digit... 
    mov ah,1
    int 21h
    sub al,48
    mov bl,al
    
    ;...Input 2nd digit...
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al   
    
    ;...Multiply...
    mov al,bl
    mul bh
    
    ;...Display result & Convert number to ASCII...
    add al,48
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main

