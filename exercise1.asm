%TITLE "Ejercicio 1"
IDEAL
DOSSEG
MODEl small
STACK 256

; 1. Escriba un programa en Assembler que almacene los siguientes valores en
; los registros indicados:
; a. AX = 00000000b
; b. BX = 01010101b
; c. CX = 00001111b
; d. DX = 11001100b
; Para asignar los valores a los registros utilice notación hexadecimal
; (BCH).

DATASEG
codSalida DB 0 ; Variable byte para guardar el código de salida

CODESEG
Inicio:
	mov ax, @data ; Inicializa la dirección de inicio del segmento de datos
	mov ds, ax ; Copia dicha dirección al registro del segmento DS
	
	mov ax, 00h
	mov bx, 55h
	mov cx, 0Fh
	mov dx, 0CCh
Fin:
	mov ah, 04ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
