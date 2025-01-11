Algoritmo Proyecto_1
    Definir producto, cantidad_producto, destino, categoria_descuento Como Entero
    Definir precio_producto, precio_unitario_con_iva, valor_total_productos, descuento_por_cantidad, valor_despues_descuento_cantidad, costo_envio, valor_total_con_envio, descuento_final, valor_total_a_pagar Como Entero
    Definir nombre_producto Como Caracter
	
    // Precios de los productos
    leche <- 200
    comida_perro <- 500
    comida_gato <- 600
    iva <- 0.19  // IVA del 19%
	
    // Menú de bienvenida
    Escribir "Bienvenido a exportación de productos"
    Escribir "Productos disponibles:"
    Escribir "1.- Leche (unidad de 200 ml)"
    Escribir "2.- Comida de perro (kg)"
    Escribir "3.- Comida de gato (kg)"
	
    // Selección de producto
    Repetir
        Escribir "Seleccione el número de producto deseado:"
        Leer producto
		
        Si producto = 1 Entonces
            precio_producto <- leche
            nombre_producto <- "Leche"
        Sino
            Si producto = 2 Entonces
                precio_producto <- comida_perro
                nombre_producto <- "Comida de perro"
            Sino
                Si producto = 3 Entonces
                    precio_producto <- comida_gato
                    nombre_producto <- "Comida de gato"
                Sino
                    Escribir "Opción no válida. Por favor, intente de nuevo."
                FinSi
            FinSi
        FinSi
    Hasta Que producto = 1 O producto = 2 O producto = 3
	
    // Calcular el precio unitario con IVA
    precio_unitario_con_iva <- Trunc(precio_producto * (1 + iva))
    Escribir "El precio unitario con IVA es: $", precio_unitario_con_iva
	
    // Solicitar cantidad de producto
    Escribir "Escriba la cantidad de producto:"
    Leer cantidad_producto
	
    // Calcular el valor total de productos
    valor_total_productos <- precio_unitario_con_iva * cantidad_producto
    Escribir "Valor total de productos antes del descuento: $", valor_total_productos
	
    // Calcular el descuento por cantidad si aplica
    descuento_por_cantidad <- 0
    Si cantidad_producto > 100 Entonces
        descuento_por_cantidad <- Trunc(valor_total_productos * 0.10)
    FinSi
    Escribir "Descuento por cantidad aplicado: $", descuento_por_cantidad
	
    // Calcular el valor después del descuento por cantidad
    valor_despues_descuento_cantidad <- valor_total_productos - descuento_por_cantidad
    Escribir "Valor después del descuento por cantidad: $", valor_despues_descuento_cantidad
	
    // Selección de destino y cálculo del costo de envío
    Escribir "¿Dónde se entregará su pedido?"
    Escribir "1.- Santiago"
    Escribir "2.- Zona Centro"
    Escribir "3.- Norte"
    Escribir "4.- Sur"
    Escribir "Seleccione el destino:"
    Leer destino
	
    Si destino = 1 Entonces
        costo_envio <- 0
    Sino
        Si destino = 2 Entonces
            costo_envio <- Trunc(valor_despues_descuento_cantidad * 0.20)
        Sino
            Si destino = 3 Entonces
                costo_envio <- Trunc(valor_despues_descuento_cantidad * 0.40)
            Sino
                Si destino = 4 Entonces
                    costo_envio <- Trunc(valor_despues_descuento_cantidad * 0.60)
                FinSi
            FinSi
        FinSi
    FinSi
    Escribir "Costo de envío: $", costo_envio
	
    // Calcular el valor total después del envío
    valor_total_con_envio <- valor_despues_descuento_cantidad + costo_envio
    Escribir "Valor total después del envío: $", valor_total_con_envio
	
    // Descuentos aplicables
    Escribir "Descuentos aplicables:"
    Escribir "1.- Sin descuento"
    Escribir "2.- Alumno UDD (15%)"
    Escribir "Seleccione la categoría de descuento:"
    Leer categoria_descuento
	
    // Aplicar el descuento final según la categoría de cliente
    descuento_final <- 0
    Si categoria_descuento = 2 Entonces
        descuento_final <- Trunc(valor_total_con_envio * 0.15)
    FinSi
    Escribir "Descuento final aplicado: $", descuento_final
	
    // Calcular el valor total a pagar después del descuento final
    valor_total_a_pagar <- valor_total_con_envio - descuento_final
    Escribir "Valor total a pagar: $", valor_total_a_pagar
	
    // Mostrar resumen final
    Escribir "**RESUMEN FINAL**"
    Escribir "Producto seleccionado: ", nombre_producto
    Escribir "Cantidad: ", cantidad_producto
    Escribir "Precio unitario con IVA: $", precio_unitario_con_iva
    Escribir "Valor total de productos antes del descuento: $", valor_total_productos
    Escribir "Descuento por cantidad aplicado: $", descuento_por_cantidad
    Escribir "Valor después del descuento por cantidad: $", valor_despues_descuento_cantidad
    Escribir "Costo de envío: $", costo_envio
    Escribir "Valor total después del envío: $", valor_total_con_envio
    Escribir "Descuento final aplicado: $", descuento_final
    Escribir "Valor total a pagar: $", valor_total_a_pagar
	
    // Agradecimiento final
    Escribir "Gracias por su compra."
FinAlgoritmo

