Proceso MiMenuConCicloRepetir
	
	Definir opcion,movimientos,saldo,retiro,abono Como Entero;
	movimientos <- 0;
	saldo <- 2000;
	
	Repetir
		
		Imprimir "-------- Menu principal ------";
		imprimir " 1 Saldo actual";
		imprimir " 2 Retiro ";
		imprimir " 3 Abono ";
		imprimir " 4 Salir del programa ";
		leer opcion;
		
		Segun opcion Hacer
			1:
				imprimir "Su saldo actual es de ", saldo;
			2:
				imprimir "Cuanto desea retirar";
				leer retiro;
				si retiro > saldo Entonces
					imprimir "El saldo a retirar ", retiro, " excede a su saldo actual ", saldo;
				SiNo
					saldo <- saldo - retiro;
					movimientos <- movimientos + 1;
					Imprimir "se retiro el dinero correctamente";
				FinSi
			3:
				Imprimir "Cuanto desea abonar a su cuenta?";
				leer abono;
				si abono < 0 Entonces
					imprimir "no puede abonar cantidades negativas";
				SiNo
					saldo <- saldo + abono;
					movimientos<- movimientos +1;
					imprimir "Se agrego el abono a tu saldo actual";
				FinSi
			4:
				imprimir "Estas saliendo del programa ......";
				Imprimir "Tu saldo actual es de ", saldo;
				imprimir "movimientos exitosos ", movimientos;
			De Otro Modo:
				imprimir "Esa opcion no esta en el menú";
				
		FinSegun	
		
	Hasta Que opcion = 4
	
FinProceso