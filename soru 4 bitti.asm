
org 100h

mov si,0d
mov bx,0000h
mov cx,17d
a:                          ; loop a is for placing angles to  
        add si,5d           ; corresponding memory places
        
        cmp si,45d          ; loop b is checking if 
        je  b               ; si is equal to 45 degrees
        mov [bx],si         ; if so it will skip the value
        inc bx
        b:
        dec cx
        jnz a

mov si,0d
mov bx,17d
mov cx,17d

c:
        mov al,[si]         ; loop c will multiply each angle with 17 (1 radian is close to 0,017) 
        mul bx              ; then divide it with 1000,100,10 consecutively so that It will yield
        mov bx,1000d        ; A B C in A,BC format. 
        div bx              ; divide the result of multiplication by 1000 dx will include remains 
        mov [si+16d],al     ; and al will include quotient 
        
        mov ax,dx           ; after dividing our concern is now remains and we will move them into ax
        mov bl,100d         ; dividing by 100 to obtain next digit
        div bl
        mov [si+32d],al     ; al will include quotient
        
        mov al,ah           ; ah will include remains
        sub ah,ah           ; clearing ah to obtain correct result after dividing
        mov bl,10d
        div bl
        mov [si+48d],al
        
        inc si              ; incrementing si decrementing cx and re-initializing all the other values 
        mov ax,0h
        mov bx,17d
        dec cx              ; it will loop until cx will hit 0
        jnz c 
ret




