MOV AH, 1 ; To read a character
INT 21H   ;if ('A' <= char> and (char <= 'Z')
CMP AL, 'A'
JNGE END_IF
CMP AL, 'Z'
JNLE END_IF   ; THEN DISPLAY THE CHARACTER 
MOV DL, AL
MOV AH, 2
INT 21H
END_IF: