TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

mytext byte "Enter your age = ",0
mytext1 byte "You are allowed to take admission",0
mytext2 byte "You are not allowed to take admission",0
mytext3 byte "Error please try again",0
mytext4 byte "Please try again",0

.code
main PROC

mov edx, offset mytext
call writestring
call readint

.if eax==100
    mov edx, offset mytext4
    call writestring
.elseif eax > 16
    mov edx, offset mytext1
    call writestring
.elseif eax < 16
    mov edx, offset mytext2
    call writestring
.else
    mov edx, offset mytext3
    call writestring
.endif
   



	exit
main ENDP
END main
