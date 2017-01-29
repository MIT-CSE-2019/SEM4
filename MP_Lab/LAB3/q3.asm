data segment
a db 6 dup(?) ; allocaltes 6 consecutive memory locations
count db 4 ; since we already know first 2 fib numbers ie 0 1
data ends
code segment
assume cs:code, ds:data
start:
	mov ax,data
	mov ds,ax
	lea si,a
	mov al,0
	mov [si],al
	inc si
	mov bl,1
	mov [si],bl

do: add al,bl
	mov bl,[si]
	inc si
	mov [si],a;
	dec count
	jnz do
	
	mov ah,4ch
	int 21h
	code ends
	end start
