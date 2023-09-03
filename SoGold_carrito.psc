Algoritmo SoGold_carrito
	
	Dimension producto[20]
	Dimension carrito[6]
	Definir menu, opcionMenu, productoElegido, contadorCarrito, total Como Entero
	
	//Bienvenida
	Escribir "Bienvenido a So Gold, seleccione qué desea hacer"
	
	Repetir
		escribir "1) Añadir productos al carrito"
		escribir "2) Ver total a pagar"
		escribir "3) Salir"
		Leer menu
		
		Si menu=1 Entonces //Para añadir productos al carrito
			productoElegido <- 1
			contadorCarrito <- 0
			
			Repetir
				Mostrar "Seleccione el producto que desee añadir a su carrito:"
				producto[1] <- "Collar Laurel - $5,000.00"
				producto[2] <- "Collar Rosa - $5,000.00"
				producto[3] <- "Anillo Diamante Blanco - $7,500.00"
				producto[4] <- "Anillo Diamante Protector - $7,500.00"
				producto[5] <- "Anillo grabado Rosas - $6,000.00"
				producto[6] <- "Anillo grabado Diamantes - $6,000.00"
				
				Para i <- 1 Hasta 6 //Mostramos los 6 productos disponibles
					Mostrar i, ") ", producto[i] 
				Fin Para
				
				Leer productoElegido //Sumamos el producto elegido por el usuario al carrito
				contadorCarrito <- contadorCarrito + 1 
				carrito[contadorCarrito] <- producto[productoElegido] 
				
				Si productoElegido = 1 Entonces //Sumamos el precio del producto elegido por el usuario al total
					total = total + 5000
				SiNo
					Si productoElegido = 2 Entonces
						total = total + 5000
					SiNo
						Si productoElegido = 3 Entonces
							total = total + 7500
						SiNo
							Si productoElegido = 4 Entonces
								total = total + 7500
							SiNo
								Si productoElegido = 5 Entonces
									total = total + 6000
								SiNo
									Si productoElegido = 6 Entonces
										total = total + 6000
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
				Mostrar "¿Desea añadir otro producto al carrito?"
				Escribir "1) Sí"
				Escribir "0) No"
				Leer opcionMenu
			Hasta que opcionMenu = 0
			
			Mostrar "Su carrito:" //Le mostramos al usuario los productos añadidos al carrito
			Para i <- 1 Hasta contadorCarrito
				Mostrar carrito[i]  
			Fin Para		
		FinSi
		
		
		Si menu=2 Entonces //Para mostrar el total a pagar, en base a los productos que el usuario añadió al carrito
			Escribir "El total a pagar es: $ ", total	
		FinSi	
		
		
	Hasta Que menu=3
FinAlgoritmo