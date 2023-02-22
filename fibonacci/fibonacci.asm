.data
pos: .int 0
valor: .int 0

.text
    global _Start
_Start:
    mov ecx, 20    ; Posición
    mov eax, 0     ; F(0)

    cmp ecx, 0
    je Salir

    dec ecx        ; Excluimos el primero
    inc eax        ; Sumamos el primero: F(0) = 1

    push edx       ; Reservamos espacio para guardar valores
    mov edx, 1     ; F(1)

    Regresa:
    inc pos[ebx]   ; Incrementamos en 1 para la próxima posecion
    push eax       ; Reservamos memoria para guardar los datos
    mov ebx, valor ; Apuntamos al ultimo
    mov eax, edx   ; Asignamos el valor en edx a eax 
    add eax, ebx   ; Sumamos el ultimo valor 
    mov ebx, valor ; Apuntamos hacia el ultimo valor
    mov [ebx], eax ; Asigan el valor en el ultimo apuntado
    pop edx        ; Recuperamos el ultmo valor de la pila
    dec ecx 
    jnz Regresa

    Salir: 
