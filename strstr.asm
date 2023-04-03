    bits    64
    global strstr:function
    section .text

strstr:
    xor rcx, rcx
    xor r8, r8
    mov r15b, byte[rdi]

_loop:
    cmp byte[rdi + rcx], 0
    je _return_null
    cmp byte[rdi + rcx],r15b
    je _putnb
    inc rcx
    jmp _loop

_putnb:
    mov r9, rcx
    mov r8, 0
    jmp _loop2

_return_loop:
    inc rcx
    jmp _loop

_loop2:
    mov r11b, byte[rdi + r9]
    cmp byte[rsi + r8], r11b
    jne _return_loop
    cmp byte[rsi + r8], 0
    je _return
    inc r9
    inc r8
    jmp _loop2

_return:
    mov rax, rcx
    ret

_return_null:
    mov rax, 0
    ret