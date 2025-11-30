
.model small
.stack 100h
.data

.code
main proc
   ; add two numbers        
    mov bh, 5
    mov bl, 4
    add bl, bh ; add 5 + 4 => bl = bl + bh
    
    ; get ASCII value of the resultant number      
    add bl, 48 ; since the ASCII value of 0 is 48, so add it to the result
    
    ; output character (the resulting number )     
    mov dl, bl
    mov ah, 2
    int 21h  
    
    mov ah, 4ch  ; return control to DOS/OS
    int 21h
    
main endp
end main





