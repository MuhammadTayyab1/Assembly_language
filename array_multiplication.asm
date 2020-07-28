TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

myval dword 1
mytext byte "Enter value = ",0

.code
main PROC

mov ecx, 6
l2:
    mov edx, offset mytext
	call writestring
	call readint
	push eax
    loop l2


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
