
.model small
.stack 100h
.code
main proc 
    ;.....INPUT......
    mov ah,1
    int 21h
    mov bl,al 
      
    
    ;....OUTPUT......
    mov ah,2
    mov dl,bl
    int 21h
    
    ;....EXIT....
    mov ah,4Ch
    int 21h
    main endp
end main
    




