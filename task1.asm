[org 0x0100]
jmp start
data dw 5
result dw 0
factorial:
push cx 
push  bx 
mov cx,ax ; i am using the ax as a global resgister .
mov ax,1
inner_loop1:
mul cx 
loop inner_loop1
pop bx 
pop cx 
ret 

summation:
push cx 
push bx 
push dx 
mov cx,ax 
mov bx,0 
mov ax,0 

iteration_loop:

mov dx,bx
shl dx,1
inc dx 
mov ax,dx 
call factorial
mov si,ax ; giving  the value to the si for the divsior 
;; check the -1^k
mov ax,1
test bx,1
jz  skip
neg ax 
skip:
cwd ; convert the word to dword to keep the sign in the dx and in the it in the standed usint it will 
; make the dx will remider and ax have the divsior 
idiv si ; it will keep the resulr in the ax 
add [result],ax
inc bx 
loop iteration_loop


pop dx
pop  bx
pop  cx
ret 2
start:
mov ax,[data]
call summation
mov ax,0x4c00
int 0x21 


