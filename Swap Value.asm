.model small
.stack 100h
.code
main proc
    ;....Input 1st Character.......
    mov ah,1
    int 21h
    mov bl,al
    
    ;Input 2nd Character....
    mov ah,1
    int 21h
    mov bh,al
    
    ;...Swap the two characters..
    xchg bl,bh
    
    ;...Print Newline..
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;....Display 1st Character...
    mov ah,2
    mov dl,bl
    int 21h
    
    ;...Display 2nd Character..
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main