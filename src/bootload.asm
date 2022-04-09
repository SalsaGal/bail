mov ax, 0x07c0
mov ds, ax
mov es, ax

mov si, message_start
call print

jmp $

; si - string pointer
print:
    push ax
    mov ah, 0xe

.loop:
    lodsb
    cmp al, 0
    je .end
    int 0x10
    jmp .loop

.end:
    pop ax
    ret

message_start: db "Bail: Started", 0

times 510-($-$$) db 0
dw 0xaa55
