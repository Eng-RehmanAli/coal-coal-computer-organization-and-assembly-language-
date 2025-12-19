[org 0x0100]
jmp start
coin db 7
spend db 15
collect db 8
score db  0
start:
mov al,[coin ]
mov bl,12
mul bl 
mov bl,[spend ]
sub al,bl
mov bl,[collect ]
add al,bl
mov bl,51
div bl
mov  byte[score],ah
mov ax,0x4c00
int 0x21 
