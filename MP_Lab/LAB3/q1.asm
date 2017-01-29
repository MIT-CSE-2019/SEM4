data segment
a db 0 ; am using decimal numbers
b db 2
c db 13
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov al,c
mov ah,0h
div b
mov c+2,ah ; if odd value is 1 
mov ah,4ch
int 21h
code ends
end start
