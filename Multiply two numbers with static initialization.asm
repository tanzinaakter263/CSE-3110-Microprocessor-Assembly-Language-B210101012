.model small
.stack 100h
.data 
num1 db 6
num2 db 7
result db ?
.code
main proc
    ;...Load numbers...
    mov al,num1
    mov bl,num2
    
    ;...Multiply..
    mul bl
    
    ;...Store result...
    mov result,al
    
    ;...Display result & Convert number to ASCII...
    add al,48
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
end main

