# Laboratorio Post-Contenido 2 - Unidad 4

**Asignatura:** Arquitectura de Computadores  
**Institución:** Universidad Francisco de Paula Santander (UFPS)  
**Estudiante:** Obed Ayala 

---

## 1. Propósito de la Actividad

Este laboratorio consiste en la implementación de un programa modular en lenguaje ensamblador **NASM** para un entorno de 16 bits. El objetivo principal es demostrar el dominio de:

- **Bibliotecas de Macros:** Uso de archivos externos (`macros.asm`) e inclusión mediante `%include`.
- **Macros con Parámetros:** Automatización de tareas repetitivas como impresión de cadenas y números.
- **Estructuras de Control:** Implementación de bucles (`LOOP`) y saltos condicionales (`CMP`, `JG`, `JE`).

---

## 2. Prerrequisitos

Para compilar y ejecutar este proyecto se requiere el siguiente software:

1. **DOSBox 0.74-3**: Emulador de entorno DOS.
2. **NASM**: Ensamblador de código fuente.
3. **ALINK**: Enlazador para generar ejecutables de 16 bits.

---

## 3. Estructura del Proyecto

El código se ha organizado de forma modular para cumplir con los estándares de la rúbrica UFPS:

- `macros.asm`: Biblioteca que contiene las macros `print_str`, `print_digito`, `nueva_linea`, `repetir_str` y `fin_dos`.
- `programa2.asm`: Programa principal que ejecuta la lógica de suma acumulativa y comparación de registros.
- `/capturas`: Carpeta que contiene las evidencias de funcionamiento.

---

## 4. Instrucciones de Compilación y Ejecución

Desde la terminal de comandos (CMD) en el directorio del proyecto, ejecute los siguientes pasos:

### Paso 1: Ensamblado

```bash
nasm -f obj programa2.asm -o programa2.obj -l programa2.lst
```

### Paso 2: Enlazado

```bash
alink programa2.obj -oEXE -o programa2.exe -entry main
```

### Paso 3: Ejecución en DOSBox

```bash
# Dentro de DOSBox, use el comando rescan si no ve el archivo
rescan
programa2.exe
```

> **Nota:** Debido a las restricciones de nombres de archivo 8.3 de DOS, si el nombre es largo puede aparecer como `PROGRA~2.EXE`.

---

## 5. Evidencias de Ejecución

### A. Compilación Exitosa

Se verifica que el archivo `PROGRAMA2.EXE` se ha generado correctamente con un tamaño superior a 0 bytes.

### B. Salida en DOSBox

La ejecución muestra satisfactoriamente:

1. El encabezado del laboratorio.
2. Una cadena repetida 3 veces mediante la macro `repetir_str`.
3. El resultado de una serie sumada (1+2+3 = 6).
4. La comparación lógica entre dos valores, determinando el mayor correctamente.

---

## 6. Historial de Versiones (Commits)

Se han realizado los commits mínimos requeridos para reflejar el progreso:

1. `Estructura inicial: biblioteca de macros`
2. `Lógica de control: bucles y condicionales`
3. `Finalización: documentación y capturas`
