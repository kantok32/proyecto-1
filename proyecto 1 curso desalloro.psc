Algoritmo CalculadoraDescuentos
	
    // Solicitar datos del producto y cantidad
    Escribir "Ingrese el nombre del producto:"
    Leer nombre_producto
	
    Escribir "Ingrese el precio unitario del producto:"
    Leer precio_producto
    // Validar que el precio sea un número positivo
    Mientras precio_producto <= 0 Hacer
        Escribir "El precio debe ser un número positivo. Por favor, intente de nuevo:"
        Leer precio_producto
    FinMientras
	
    Escribir "Ingrese la cantidad a comprar:"
    Leer cantidad_producto
    // Validar que la cantidad sea un número positivo
    Mientras cantidad_producto <= 0 Hacer
        Escribir "La cantidad debe ser un número positivo. Por favor, intente de nuevo:"
        Leer cantidad_producto
    FinMientras
	
    // Calcular el subtotal (precio unitario por cantidad)
    subtotal <- precio_producto * cantidad_producto
	
    // Definir los porcentajes de descuento
    descuento_10 <- 0.10
    descuento_20 <- 0.20
    descuento_30 <- 0.30
	
    // Determinar el descuento en base a la cantidad
    Si cantidad_producto >= 10 Y cantidad_producto < 20 Entonces
        descuento <- subtotal * descuento_10
    Sino
        Si cantidad_producto >= 20 Y cantidad_producto < 50 Entonces
            descuento <- subtotal * descuento_20
        Sino
            Si cantidad_producto >= 50 Entonces
                descuento <- subtotal * descuento_30
            Sino
                descuento <- 0 // Sin descuento si no cumple ninguna condición
            FinSi
        FinSi
    FinSi
	
    // Calcular el precio final después de aplicar el descuento
    total_a_pagar <- subtotal - descuento
	
    // Solicitar el monto con el que el cliente pagará
    Escribir "El total a pagar es: ", total_a_pagar
    Escribir "¿Con cuánto pagará?:"
    Leer monto_cliente
    // Validar que el monto sea suficiente
    Mientras monto_cliente < total_a_pagar Hacer
        Escribir "El monto ingresado es insuficiente. Por favor, ingrese un monto suficiente:"
        Leer monto_cliente
    FinMientras
	
    // Calcular el cambio
    cambio <- monto_cliente - total_a_pagar
	
    // Mostrar el resumen de la compra
    Escribir "**RESUMEN DE COMPRA**"
    Escribir "Producto: ", nombre_producto
    Escribir "Cantidad: ", cantidad_producto
    Escribir "Subtotal: ", subtotal
    Escribir "Descuento aplicado: ", descuento
    Escribir "Total a pagar: ", total_a_pagar
	
    // Si hubo cambio, mostrarlo
    Si monto_cliente > total_a_pagar Entonces
        Escribir "Cambio: ", cambio
    FinSi
	
    // Agradecer por la compra
    Escribir "Gracias por su compra."
	
FinAlgoritmo

