data segment
a dw 0304h,0102h ; little-endian encoding so reversed
b dw 0101h,0101h
c db ?,?,?,?
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
mov ds,ax
mov ax,a
mov bx,b
mul bx
mov c,ax
mov c+2,dx
mov ax,a+2 ; moving to the next byte
mul bx
add c+2,ax
mov c+4,dx
mov ax,a ; simillar to q2 but need to move next byte for multiplier too
mov bx,b+2
mul bx
add c+2,ax
add c+4,dx
mov ax,a+2
mul bx
add c+4,ax
mov c+6,dx
mov ah,4ch
int 21h
code ends
end start
