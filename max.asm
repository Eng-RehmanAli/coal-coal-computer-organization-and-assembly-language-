[org 0x0100]
jmp start
data db 1,2,3,4,5,6,7,8,9
result db 0
start:
mov si,data
mov cx, 9
mov   al,[si]
mov bl,al 
 dec cx
find_max:
inc si
mov al,[si]
cmp al,bl
jle skip
mov bl,al
skip:
dec cx 
jnz find_max
mov ax,0x4c00
int 0x21 
