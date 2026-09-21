%TITLE "Ejercicio 5"
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
	
	; 5. Indique qué valores hexadecimales tienen los registros AX, BX, CX y DX al
	; finalizar la ejecución del siguiente fragmento de código Assembler. Para
	; ello, “ejecute” paso a paso el programa, simulando la tarea que realiza el
	; microprocesador.

	; Ax posee el valor 500
	mov ax, 500

	; Bx tiene el valor 1ah el cual es 26
	mov bx, 1Ah

	; Esto suelta un error
	; sub ax, bx mov cx, ax dec cx

	; El valor de dx pasa a ser 3871 en decimal
	mov dx, 111100011111b

	; El valor de dx incrementa en uno y se hace 3872
	inc dx
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
