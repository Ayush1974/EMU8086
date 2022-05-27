org 100h
    mov dx, offset msg   
    mov ah, 9
    int 21h


ret

msg DB "hello world$"


