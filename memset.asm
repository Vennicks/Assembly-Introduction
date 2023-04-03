    bits    64
    global memset:function
    section .text

memset:
    xor rcx, rcx

_loop:
    cmp rcx, rdx
    je _return
    mov byte[rdi + rcx], sil
    inc rcx
    jmp _loop

_return:
    mov rax, rdi
    ret