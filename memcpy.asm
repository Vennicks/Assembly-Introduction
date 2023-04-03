    bits    64
    global memcpy:function
    section .text


memcpy:
    xor rcx, rcx

_loop:
    cmp rcx, rdx
    je _return
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    inc rcx
    jmp _loop;

_return:
    mov rax, rdi
    ret