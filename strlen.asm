    bits    64
    global strlen:function
    section .text

strlen:
    xor rcx, rcx

_loop:
    cmp byte[rdi + rcx], 0
    je _return
    inc rcx
    jmp _loop

_return:
    mov rax, rcx
    ret