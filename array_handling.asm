TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc
.data

myarray dWord 1,2,3,4,5,6

.code
main PROC

mov eax, lengthof myarray
call writeint

mov eax, Type myarray
call writeint

mov eax, myarray[8]
call writeint

mov ecx,6

mov eax,0


mov esi,OFFSET myarray
l1:
    add eax,[esi]
    add esi,4
    loop l1

call writeint    
   



	exit
main ENDP
END main
