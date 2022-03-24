
org 100h

mov si,0h           ;initializing si to increment through number array
mov bx,0030h        ;first memory location 
mov cx,8d           ;initializing count


count:
    mov al,number[si]    ;moving the each elements of number array to al register
    mov ds:[bx],al       ;moving content of al to memory
    
    inc bx
    inc si
    dec cx
    jnz count
    
 


ret
  

number db 2d,1d,9d,8d,6d,7d,5d,0d  ; array that consist of my student number (21986750)
