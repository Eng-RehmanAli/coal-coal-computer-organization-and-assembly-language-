[org 0x0100]
jmp start
data dw 1,2,3,4,5,56,70,3,1
length  dw 9

buble_sort:
push bp
mov sp,bp 
push ax
push bx 
push cx 
mov si,[bp+6]
mov cx,[bp+4]
;outer loop
outer_loop:
mov  bx,0


;inner loop

inner_loop:
mov ax,[si+bx]
cmp ax,[si+bx+2]
jbe no_swap
xchg  ax,[si+bx+2]
no_swap:
add bx,2
cmp bx,16
jnz  inner_loop
dec cx
cmp cx,0
jnz outer_loop


ret 4

start:
mov ax,data
mov cx,[length]
push ax
push cx
call buble_sort
mov ax,0x4c00
int 0x21h 
  