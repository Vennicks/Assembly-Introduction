    bits    64
    global rindex:function
    section .text

strlen:
    xor rcx, rcx
    xor r13, r13

_loop:
    cmp byte[rdi], 0
    je _return
    cmp byte[rdi], sil
    je _found
    inc rdi
    jmp _loop

_found:
    mov r13, rdi
    inc rdi
    jmp _loop

_return:
    mov rax, r13
    ret