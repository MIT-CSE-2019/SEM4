data segment
a dw 0402h,0204h
b dw 0208h
c dw ?,?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
mov ds,ax
mov ax,a
mov dx,a+2
div b
mov c,ax
mov ah,4ch
int 21h
code ends
end start
