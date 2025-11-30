.model small
.stack 100h
.data
a db 'Enter three initials: $'
.code
 
 main proc
    mov ax,@data
    mov ds,ax
    
    ;....Display String..
    mov ah,9  
    lea dx,a
    int 21h  
    
    
    ;...Input 1st Inital..
    mov ah,1
    int 21h
    mov bl,al
    
    ;...Input 2nd Initial...
    mov ah,1
    int 21h
    mov bh,al
    
    ;..Input 3rd Initial..
    mov ah,1
    int 21h
    mov cl,al
    
    ;...Print Newline...
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;....Display 1st Initial...
    mov ah,2
    mov dl,bl
    int 21h
    
    ;.....Print Newline...
                           
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;....Display 2nd Initial...
    mov ah,2
    mov dl,bh
    int 21h  
    
     ;...Print Newline...
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;....Display 3rd Initial...
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,4Ch
    int 21h
    main endp
 end main
    
             
             