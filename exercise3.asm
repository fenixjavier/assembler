%TITLE "Ejercicio 3"
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
	
	; 3. Realice un programa en Assembler que sume los contenidos de los cuatro
	; registros de propósito general y guarde el resultado en AX. (En un lenguaje
	; de alto nivel, sería algo tan sencillo como AX = AX + BX + CX + DX).
	mov ax, 2

	mov bx, 3
	add bx, ax

	mov cx, 5
	add cx, bx

	mov dx, 1
	add dx, cx

	add ax, dx
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
