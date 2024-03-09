Algoritmo sin_titulo
	definir i,inicio,final,suma Como Entero
	definir promedio Como Real;
	suma <- 0;
	contador <- 0;
	imprimir "Ingresa dos numeros enteros, uno sera el inicio del ciclo y el otro el final";
	leer inicio,final;
	
	Para i<-inicio Hasta final Con Paso 1 Hacer
		imprimir i;
		suma <- suma + i;
		contador <- contador + 1;
	Fin Para
	
	promedio <- suma / contador;
	
	imprimir "La suma es ",suma;
	imprimir "El resultado del promedio es ", promedio;
	
FinAlgoritmo
