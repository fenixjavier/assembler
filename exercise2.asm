%TITLE "Ejercicio 2"
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
	
	; 2. Escriba un programa en Assembler que copie el contenido del registro CX
	; en los registros AX, BX y DX. (Es decir, al final del programa, los cuatro
	; registros deben contener el mismo valor que tenía CX al comenzar).
	mov cx, 0FFh
	mov ax, cx
	mov bx, cx
	mov dx, cx
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
