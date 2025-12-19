[org 0x0100]
jmp start
data db 1,2,3,4,5,6,7,4,2,2,3
result db  0
find_max:
push  bp

mov  bp,sp
push cx 
push di 
push si 
mov di,0
mov si,[bp+4]
mov cx ,[bp+6]
mov al,[si+di]
mov bl,al
dec cx 
outer_loop:
mov di,0
inner_loop:
inc si
mov al,[si+di]
cmp  al,bl
jle no_greater
mov bl,al
no_greater:
inc di
cmp  di,cx 
jne find_max
pop si
pop di
pop cx 
mov sp,bp 
push bp
ret 4

start:
mov  si,data
mov cx ,11
push si 
push cx 
call find_max
mov 0x4c00
int 0x21 