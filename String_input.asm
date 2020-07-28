TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

input_str byte 500 dup(0)
str_len dword ?

.code
main PROC

mov edx, offset input_str
mov ecx, sizeof input_str

call readstring
mov str_len, eax

mov ecx,6
l1:
mov edx, offset input_str
call writestring
call crlf
loop l1


	exit
main ENDP
END main
