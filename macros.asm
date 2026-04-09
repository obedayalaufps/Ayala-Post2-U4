; macros.asm - Biblioteca de macros UFPS
%macro fin_dos 0
    mov ax, 4C00h  ; Código de salida 0 [cite: 364]
    int 21h
%endmacro

%macro nueva_linea 0
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
%endmacro

%macro print_str 1
    mov ah, 09h
    mov dx, %1
    int 21h
%endmacro

%macro print_digito 0
    push ax
    and al, 0Fh
    add al, 30h    ; Convertir a ASCII [cite: 441]
    mov ah, 02h
    mov dl, al
    int 21h
    pop ax
%endmacro

%macro repetir_str 2
    mov cx, %2     ; Número de repeticiones [cite: 416]
    %%ciclo:
    print_str %1
    loop %%ciclo   ; Etiqueta única %% para evitar errores [cite: 410, 429]
%endmacro