[org 0x0100]
jmp start
name db '24p-3078'
length  dw  8
;clearscreen
clscreen:
push ax 
push cx 
push es 
push di
mov ax,0xb800
mov es,ax
mov di,0
inner_screen:
mov word[es:di],0x0B20
add di,2
cmp di,4000
jne inner_screen
 
pop di
pop es 
pop cx 
pop ax 
ret 
; print the name 
name_call:
push  bp
mov bp,sp 
push ax
push es
push di
push cx
push si
mov si,[bp+6]
mov cx,[bp+4]
mov ax,0xb800
mov es,ax
mov di,1992
;; the offset formula is------------=>(row*80+colum)*2==> (12*80+36 )*2
mov ah,0x0B
inner_name:
mov al,[si]
mov [es:di],ax
add di,2
inc si
loop inner_name
pop si
pop cx 
pop di 
pop  es 
pop ax 
mov sp,bp
pop bp
ret 4

;making  at the start

start:
call clscreen
mov ax,name
mov cx,[length]
push ax
push cx
call name_call
mov ah,0x1
int 0x21
mov ax,0x4c00
int 0x21 






