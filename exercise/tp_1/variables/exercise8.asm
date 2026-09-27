%TITLE "Ejercicio 8"
IDEAL
DOSSEG
MODEl small
STACK 256

DATASEG
codSalida DB 0 ; Variable byte para guardar el código de salida
cuenta DW 0
lista DB 50 DUP (0Ah)
suma DW ?
dni DB "42.345.950"

CODESEG
Inicio:
	mov ax, @data ; Inicializa la dirección de inicio del segmento de datos
	mov ds, ax ; Copia dicha dirección al registro del segmento DS
	
	; 8. Realice la declaración de las siguientes variables. Si no se indica, utilice el
	; tamaño que considere adecuado.
	; a. Variable cuenta, de tamaño word, inicializada en 0.
	; b. Variable lista, un arreglo de 50 elementos de tamaño byte,
	; inicializados todos en 0Ah. Variable suma que permita almacenar un
	; número entre 0 y 3000, sin inicializar.
	; c. Variable dni que permita almacenar como string un DNI (incluidos los
	; puntos), inicializada con su DNI.
Fin:
	mov ah, 4Ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
