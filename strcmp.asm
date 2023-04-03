    bits    64
    global strcmp:function
    section .text

strcmp:
    mov rcx, 0

_loop:
    mov r13b, byte[rdi + rcx]
    mov r15b, byte[rsi + rcx]

    cmp r13b, r15b
    jne _difference_found

    cmp byte[rdi+rcx], 0
    je _return

    inc rcx
    jmp _loop

_difference_found:
    sub r13b, r15b
    movsx rax, r13b
    ret

_return:
    mov eax, 0
    ret