[org 0x0100]
jmp start 
data dw 1,2,3,4,5,6,7,0
start:
mov ax,[data]
add [data+14],ax
mov ax,[data+2]
add [data+16],ax
mov ax,[data+4]
add [data+16],ax
mov ax,[data+6]
add [data+14],ax
mov ax,[data+8]
add [data+14],ax
mov ax,[data+10]
add [data+14],ax
mov ax,[data+14]
add [data+14],ax

mov ax,0x4c00
int 0x21 