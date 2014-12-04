;Write procedure that gives value of n+(n-1)+...+1, where n is in AL. Result should be in DX.

;Napisati proceduru koja izracunava vrijednost izraza n+(n-1)+ ... + 1
;ako je n dato u registru AL, rezultat treba upisati u registar DX.

SECTION .data
N db 5		;8-b value

SECTION .text
global _start
_start:

MOV AL,[N]
MOV AH,0	;clean, assume it's signed
MOV EDX,0	;sum is 0 at the beginning;

CALL NEAR sum

end:
    MOV EAX,1
    MOV EBX,0
    INT 80h

sum:
    addition:
	    ADD EDX,EAX
	    DEC EAX
	    CMP EAX,0
	    JNE addition
	    RET

	    

