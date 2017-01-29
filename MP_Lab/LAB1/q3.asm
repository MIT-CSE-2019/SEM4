data segment
a db 02h
b db 04h
c db 00h
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov al,a
mov bl,b
sub al,bl
mov c,al
mov ah,4ch
int 21h ; interrupt
code ends
end start
