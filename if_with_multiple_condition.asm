TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

x dword ?

.code
main PROC

mov eax,10
mov ebx,5
mov ecx,11

cmp eax,ebx
ja l1
jmp next
l1:

cmp ebx,ecx

ja l2
jmp next
l2:
mov eax,1
call writeint
ret

next:
 mov eax,2
 call writeint


	exit
main ENDP
END main
