%TITLE "Ejercicio 6"
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
	
	; 6. Indique cuál es el contenido del segmento de datos, dada la siguiente
	; declaración de variables. Utilice notación hexadecimal.

	; a. numeroPrimo DB 7
	; En hexa es: 7h
	; En memoria se guarda como: 07

	; b. primoGrande DW 9973
	; En hexa es: 26f5h
	; En memoria se guarda como: f5 26
	; En el segmento de datos se invierte el orden porque
	; la memoria usa el formato "little endian".
	; Esto significa que el byte menos significativo(LSB)
	; se guarda mas abajo en la memoria.

	; c. impares DB 1, 3, 7, 9
	; En hexa: 1h, 3h, 7h, 9h
	; En memoria se guarda como: 01 03 07 09

	; d. arreglo_5 DB 5 DUP (0Fh)
	; En memoria se guarda como: 0F 0F 0F 0F 0F
	; DUP duplica/repite el valor entre parentesis, por lo tanto
	; en el arreglo todos los valores son "0F"

	; e. nombre DB "Luis"
	; En memoria se guarda como: 4C 75 69 73
	; Por mas que el formato sea "little endian" los arreglos se guardan
	; en orden normal.
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
