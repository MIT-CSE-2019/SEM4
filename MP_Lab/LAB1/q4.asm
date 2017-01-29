data segment
a dw 0002h
b dw 0004h
c dw 0000h
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov ax,a
mov bx,b
sub ax,bx
mov c,ax
mov ah,4ch
int 21h ; interrupt
code ends
end start
