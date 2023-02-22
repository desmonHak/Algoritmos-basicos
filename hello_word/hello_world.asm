section .data
msg: db 'Hola, mundo', 10
len equ $ - msg

section .text
global _start

_start:
    mov eax, 4      ; Sistema de llamada de impresión de byte (sys_write)
    mov ebx, 1      ; Salida estandar (stdout)
    mov ecx, msg    ; El mensaje que queremos imprimir
    mov edx, len    ; El tamaño del mensaje
    int 80h         ; Llamar el sistema operativo

    mov eax, 1      ; Sistema de llamada de salida (sys_exit)
    int 80h         ; Llamar a syscall exit
