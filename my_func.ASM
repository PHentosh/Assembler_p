include 'win64a.inc'

format ELF64

section '.text' executable

public my_func


my_func:
        mov R12, R9
        mov R9, RCX
        mov RSI, RDX
        mov RDI, R8
        ;mov R12, RCX
        mov R8, 0

        Looping:
                cmp R8,R12
                jnl EndOfProgram

                mov RAX, [RSI + 8*R8]


                mov RDX, 0
                mov RCX, [R9 + 8*R8]

                cmp RAX, [zero]
                jnl Nega

                neg RAX
                idiv RCX


                Ch:
                mov R10, RAX
                mov RDX, 0
                imul RCX
                mov R11, RAX
                add RAX, RCX
                add RAX, [RSI + 8*R8]
                add R11, [RSI + 8*R8]


                cmp [zero], RAX
                jnl Ne1

                cmp [zero], R11
                jnl Ne2

                En:
                cmp R11, RAX
                jnl ReEn


                mov [RDI + 8*R8], R10
                inc R8
                jmp Looping

                ReEn:

                cmp [zero], R10
                jnl Ne3

                inc R10
                mov [RDI + 8*R8], R10
                inc R8
                jmp Looping

                Ne3:
                sub R10, 1
                mov [RDI + 8*R8], R10
                inc R8
                jmp Looping

                Nega:

                idiv RCX
                neg RAX
                jmp Ch


               ; mov [RDI + 8*R8], RAX

               ; inc R8
               ; jmp Looping

                Ne1:
                neg RAX
                jmp En

                Ne2:
                neg R11
                jmp En

        EndOfProgram:
        ;mov RAX, RDI
        ret

section '.data' writeable
zero dq 0