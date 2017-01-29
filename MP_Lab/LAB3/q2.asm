data segment
a db 30
b db 10
c db ?
gcd db ?
lcm db ?
data ends
code segment
assume cs:code, ds:data
start:mov ax,data
mov ds,ax
mov al,a
mov bl,b

do4: cpm al,bl
	 jz do1 ; conditional jumps
	 ja do2
	 jb do3
	 
do2: sub al,bl
	 jmp do4 ; unconditional jumps
	 
do3: xchg al,bl
	 jmp do4
	 
	 
do1: mov gcd,al
	 mov al,a
	 mov bl,b
	 mul bl
	 div gcd
	 mov lcm,al
	 mov ah,4ch
	 int 21h
code ends
end start
