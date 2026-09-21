%TITLE "Ejercicio 4"
IDEAL
DOSSEG
MODEl small
STACK 256

DATASEG
codSalida DB 0 ; Variable byte para guardar el código de salida

CODESEG
Inicio:
	mov ax, @data ; Inicializa la dirección de inicio del segmento de datos
	mov ds, ax ; Copia dicha dirección al registro del segmento DS
	
	; 4. Dada la edad de una persona almacenada en el registro AX y el año actual
	; almacenado en CX, realice un programa que calcule y almacene en el
	; registro DX el año en que dicha persona nació.
	mov ax, 26
	mov cx, 2026

	mov dx, cx
	sub dx, ax
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
