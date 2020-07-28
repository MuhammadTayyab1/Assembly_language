TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

mytext1 byte "Enter value 1 = ",0
mytext2 byte "Enter value 1 = ",0

val1 Real4 ?
val2 Real4 ?
val3 Real4 1.1

.code
main PROC

mov edx, offset mytext1
call writestring
call readfloat
fstp val1

mov edx, offset mytext2
call writestring
call readfloat
fstp val2

call dumpregs

fld val1
fadd val2
call writefloat 

fld val1
fsub val2
call writefloat 

fld val1
fmul val2
call writefloat 

fld val1
fdiv val2
call writefloat 

call dumpregs


	exit
main ENDP
END main
