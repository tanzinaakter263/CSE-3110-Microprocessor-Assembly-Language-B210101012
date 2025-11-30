.model small
.stack 100h
.data

.code 
    main proc
        
        mov cl, 48   ; initialize the counter with ASCII value of 0        
        mov ah, 2 ; character output interrupt number
    next:    
        mov dl, cl	  ; print current digit
        int 21h
        inc cl   ; increment counter        
        cmp cl, 57; ascii value for '9'
        jle next  ; loop until counter is less than or equal to 9
        
     main endp    
    end main
