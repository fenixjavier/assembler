%TITLE "Mostrar mensaje"
IDEAL
DOSSEG
MODEl small
STACK 256

DATASEG
codSalida DB 0 ; Variable byte para guardar el código de salida
varEjemplo DW 100 ; Declaración de variable de 16 bits con valor 100
msg DB 'Hola Mundo desde 8086 EXE!$', 0xD, 0xA ; El '$' es el terminador de cadena en DOS

CODESEG
Inicio:
	mov ax, @data ; Inicializa la dirección de inicio del segmento de datos
	mov ds, ax ; Copia dicha dirección al registro del segmento DS

	; --- Imprimir mensaje en pantalla ---
	mov ah, 09h ; Función DOS para imprimir cadena
	mov dx, offset msg ; Dirección de la cadena
	int 21h

	mov cx, [varEjemplo] ; Carga CX con el contenido de la variable
Fin:
	mov ah, 04ch ; Carga función DOS de salida del programa
	mov al, [codSalida] ; Pone el valor de salida en el acumulador bajo AL
	int 21h ; Llama a la interrupción del S.O. para finalizar
END Inicio
