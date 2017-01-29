data segment
a dw 0402h
b db 08h
c db ?
d db ?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
mov ds,ax
mov ax,a
div b
mov c,al ;quotient stored in LSB side
mov d.ah ;remainder stored in MSB side
mov ah,4ch
int 21h
code ends
end start
