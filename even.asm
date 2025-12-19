[org 0x0100]
jmp start
data db 1,3,4,5,3,2,3,4
count_even db 0 
count_odd db 0

even:
push bp 
mov bp,sp 
mov  si,[bp+6]
push ax
push bx 
push cx
mov cx ,[bp+4]



; loop 
even_loop:
mov al,[si]
and al,1
cmp al,0
jnz skip_even
inc byte[count_even]

skip_even:
inc si
dec cx 
jnz even_loop

pop cx 
pop dx 
pop ax
mov sp,bp
pop bp 
ret 4 

start:
mov ax,data
mov cx ,8
push ax 
push cx 

call even 
mov ax,0x4c00
int 0x21 






