ORG 0x7c00
BITS 16

start:

    jmp $

printchar:
    mov ah, 0eh
    mov al, 'A'
    mov bx, 0
    int 0x10
    jmp $

message: db 'Hello World!', 0

times 510-($ - $$) db 0
dw 0xAA55

