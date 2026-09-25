%TITLE "Ejercicio 7"
IDEAL
DOSSEG
MODEl small
STACK 256

DATASEG
codSalida DB 0 ; Variable byte para guardar el código de salida
numeroPrimo DB 7
primoGrande DW 9973
impares DB 1, 3, 7, 9
arreglo_5 DB 5 DUP (0Fh)
nombre DB "Luis"

CODESEG
Inicio:
	mov ax, @data ; Inicializa la dirección de inicio del segmento de datos
	mov ds, ax ; Copia dicha dirección al registro del segmento DS
	
	; 7. Tomando como base las declaraciones del ejercicio anterior, indique cómo
	; realizar las siguientes operaciones:
	; a. Copiar en AX el valor de primoGrande.
	mov ax, primoGrande

	; b. Copiar en AL el tercer elemento (número 7) del arreglo impares.
	; Para acceder a los elementos de un arreglo el indice son los bytes de corrido.
	mov al, impares[2]

	; c. Asignar a los elementos 0, 1 y 2 de arreglo_5 el valor de los registros
	; BL, CL y DL.
	mov [arreglo_5 + 0], bl
	mov [arreglo_5 + 1], cl
	mov [arreglo_5 + 2], dl
	
	; d. Cambiar el contenido de la variable nombre para que
	; almacene el apellido “Ruiz”.
	mov [nombre + 0], 'R'
	mov [nombre + 1], 'u'
	mov [nombre + 2], 'i'
	mov [nombre + 3], 'z'
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
