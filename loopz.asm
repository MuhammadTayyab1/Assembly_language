TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data


.code
main PROC

mov ecx,6
l1:
   mov eax,ecx
   call writeint

   sub eax,eax
   loopz l1





	exit
main ENDP
END main
