# Assembler_p

- Варіант 14
- Функція №5

# Система: Windiws 64

- my_func.ASM - тіло функції написане на асемблері
- my_main.ASM - програма для виклику функції через асемблер
- my_func_h.h - хідер для коректної роботи C програми
- my_main_c.c - С програма для виклику функції

## Компіляція
# Команди в що потрібно виконати в консолі відкритій і дерикторії з файлами

# Виклик через асемблер:
- INCLUDE=x86/include ./fasmg.exe my_main.asm
- INCLUDE=x86/include ./fasmg.exe my_func.asm
- gcc my_func.o  my_main.o -o my_main.exe -m64
- ./my_main

# Виклик через C:
- INCLUDE=x86/include ./fasmg.exe my_func.asm
- gcc -c my_main_c.c -o my_main_o.o
- gcc my_func.o my_main_o.o -o my_main_c.exe
- ./my_main_c
