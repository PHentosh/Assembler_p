include 'win64a.inc'

format ELF64

section '.text' executable

public main
; needed imports
 ;INCLUDE=x86/include ./fasmg.exe my_main.asm
 ;INCLUDE=x86/include ./fasmg.exe my_func.asm
 ;gcc my_func.o  my_main.o -o my_main.exe -m64
 extrn printf
 extrn exit
extrn my_func


main:
        sub     rsp, 0x8

        lea RCX, [a]
        lea RDX, [b]
        lea R8, [x]

        mov R9, [size]

        call my_func

    ;mov RAX, RDI

    mov RCX, msg
    call  printf

    mov RCX, msgn
    mov RDX, [x]
    call  printf

    mov RCX, msgn
    mov RDX, [x+8]
    call  printf

    mov RCX, msgn
    mov RDX, [x+16]
    call  printf

    mov RCX, msgn
    mov RDX, [x+24]
    call  printf

    mov RCX, msgn
    mov RDX, [x+32]
    call  printf



        call exit


section '.data' writeable
a dq 3, 3, 3, -3, 4 ; first array
b dq 10, 8, -8, 8, 10 ;second array
size dq 5
zero dq 0
x dq 0, 0, 0, 0, 0 ; result array
msg db "Result is:",0x0D,0xA,0 ; message to be printed
msgn db "%d ",0x0D,0xA, 0