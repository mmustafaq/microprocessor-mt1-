
org 100h
    mov ax,0000h  ;initializing ax and bx 
    mov bx,0000h
    mov cx,0010h  ;initializing cx as 16 to loop the code 15 times
    


    a:
    mul bx        ; multiplying bx with ax 
 
    mov [bx],ax   ; copying the result of multiplication to the memory location
    
    mov ax,bx     ; equalizing ax with bx


    inc bx        ; incrementing both of them by 1
    inc ax


    
    dec cx        ; decreasing cx by 1
    jnz a

ret




