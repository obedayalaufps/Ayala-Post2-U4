; programa2.asm - Laboratorio Post2 Unidad 4
%include "macros.asm"

segment data
    titulo      db "=== Macros y Control de Flujo ===", 0Dh, 0Ah, 24h
    linea_a     db "[Linea A] Primera impresion", 0Dh, 0Ah, 24h
    msg_mayor   db "El valor mayor es: ", 24h
    msg_iguales db "Los valores son iguales.", 0Dh, 0Ah, 24h
    msg_fin     db "Fin del programa.", 0Dh, 0Ah, 24h

segment code
    global main

main:
    mov ax, data
    mov ds, ax

    ; 1. Encabezado
    print_str titulo

    ; 2. Demostración de repetir_str (3 veces) [cite: 604]
    repetir_str linea_a, 3

    ; 3. Suma acumulativa (1+2+3=6) [cite: 605, 608]
    mov cx, 3
    call sumar_serie
    print_str msg_mayor
    print_digito
    nueva_linea

    ; 4. Comparación (9 vs 4) [cite: 614]
    mov ax, 9
    mov bx, 4
    call comparar_e_imprimir

    ; 5. Mensaje final [cite: 625]
    print_str msg_fin
    fin_dos

; --- Procedimientos ---
sumar_serie:
    push cx
    xor ax, ax
    .paso:
    add ax, cx
    loop .paso
    pop cx
    ret

comparar_e_imprimir:
    cmp ax, bx
    je .son_iguales
    jg .ax_mayor
    mov al, bl ; BX es mayor
    jmp .imprimir
    .ax_mayor:
    ; AX ya está en AL (nibble bajo)
    .imprimir:
    print_str msg_mayor
    print_digito
    nueva_linea
    ret
    .son_iguales:
    print_str msg_iguales
    ret