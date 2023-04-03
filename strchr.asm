    bits    64
    global strchr:function
    section .text

strchr:
    xor rcx, rcx

_loop:
    cmp byte[rdi + rcx], sil
    je _return
    cmp byte[rdi + rcx], 0
    je _return_null
    inc rcx
    jmp _loop

_return:
    add rdi, rcx
    mov rax, rdi
    ret

_return_null:
    mov rax, 0
    ret