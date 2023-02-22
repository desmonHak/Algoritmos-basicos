; comienza obtención del desplazamiento del cifrado cesar
    mov eax, 0 ; movimiento de 0 en eax para obtener el desplazamiento
    cmp [desplazamiento], eax ; comparación entre el desplazamiento obtenido y el desplazamiento requerido
    je  loop ; si son equivalentes, continua
    add eax, 1 ; si no lo son, suma +1 al desplazamiento
    cmp [desplazamiento], es ; compara el desplazamiento con el obtenido
    jne loop ; si los dos son diferentes, repite interpretación

; inicia bucle loop para codificar
loop:
    mov ebx, [texto] ; guarda caracter actual en variable llamada texto
    add ebx, eax ; suma el desplazamiento al caracter
; guarda el resultado en un area de memoria reservada para el mensaje codificado
    mov [mensajeCodificado], ebx
    add texto, 1 ; suma +1 al offset
    cmp [final_msg], offset ; comprueba si has llegado al final del mensaje
    jne loop ; si aún no has acabado, repite interpretación
