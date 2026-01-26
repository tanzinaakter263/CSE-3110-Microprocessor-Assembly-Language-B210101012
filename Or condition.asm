MOV AH, 1 ;Input character
INT 21H
CMP AL, 'y'
JE THEN_PART
CMP AL, 'Y'
JE THEN_PART
JMP END_IF ;both false, terminate
THEN_PART:
MOV AH, 2
MOV DL, AL
INT 21H
END_IF:
