[org 0x0100]
mov ax,10
mov bx,5
sub ax,bx
mov bx,10
sub ax,bx
mov ax,0x4c00 ; it return   the control to the dos 
int  0x21