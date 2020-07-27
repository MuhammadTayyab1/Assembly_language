TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

val dword ?

.code
main PROC

mov ecx,6
l1:
   call readint
   push eax
   loop l1


mov ecx,6
l2:
   pop val
   mov eax,val
   call writeint
   loop l2



	exit
main ENDP
END main
