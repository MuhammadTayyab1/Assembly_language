TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

count dword ?

.code
main PROC

mov ecx,6
l3:
   mov eax,ecx
   call writeint
   loop l3

call crlf
call crlf


mov ecx,6
l1: 
   mov count,ecx
   mov ecx,5
   l2:
     mov eax,count
     call writeint
     loop l2
     mov ecx,count
     call crlf
     loop l1
   



	exit
main ENDP
END main
