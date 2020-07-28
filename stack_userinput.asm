TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

myval dword 1

.code
main PROC

mov EAX,1
mov EBX,2
mov ECX,3
mov EDX,4
mov ESI,5
mov EDI,6


push eax
push ebx
push ecx
push edx
push esi
push edi

mov ecx,6
l1:
    pop eax
	mul myval
	mov myval,eax

	loop l1

mov eax,myval
call writeint



	exit
main ENDP
END main
