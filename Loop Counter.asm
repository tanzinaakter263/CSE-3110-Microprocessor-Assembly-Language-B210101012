.model small
.stack 100h
.code
MAIN PROC
MOV AH, 2
MOV CX, 256 ; Loop counter, number of characters to display
MOV DL, 0 ; Contains ASCII code of character to display, starting with 0
DISPLAY_LOOP:
INT 21H ; Output the character in DL
INC DL ; Update to next character
DEC CX ; Decrement loop counter
JNZ DISPLAY_LOOP ; Repeat the statements if CX is not 0
MAIN ENDP
END MAIN
