📝 README - Calculadora de Descuentos

📘 Instrucciones de Uso

Ingreso de datos:

Ingresa el nombre del producto.

Especifica el precio unitario (debe ser mayor a 0).

Especifica la cantidad a comprar (debe ser mayor a 0).

Cálculo de subtotal:

El sistema calcula el subtotal multiplicando el precio unitario por la cantidad de productos.

Aplicación de descuentos:

Se aplica el descuento correspondiente según la cantidad comprada.

Cálculo del total a pagar:

El sistema resta el descuento del subtotal para calcular el total a pagar.

Ingreso del monto del cliente:

El cliente debe ingresar con cuánto va a pagar. Si el monto no es suficiente, se solicita un monto adicional.

Cálculo de cambio:

Si el monto ingresado es mayor al total a pagar, se calcula el cambio y se muestra al cliente.

Resumen de la compra:

Se muestra un resumen con todos los detalles de la compra, incluyendo el producto, cantidad, subtotal, descuento aplicado, total a pagar y, si corresponde, el cambio.

⚙️ Estructura del Algoritmo

1️⃣ Entrada de Datos

Solicitud de nombre del producto, precio y cantidad.

Validación de que los valores sean positivos.

2️⃣ Cálculo del Subtotal

Subtotal = precio * cantidad

3️⃣ Aplicación de Descuentos

Si la cantidad está entre 10 y 19 → 10% de descuento

Si la cantidad está entre 20 y 49 → 20% de descuento

Si la cantidad es 50 o más → 30% de descuento

4️⃣ Cálculo del Total

Total = subtotal - descuento

5️⃣ Pago y Cambio

El cliente debe ingresar un monto suficiente para pagar el total.

Si el monto es mayor al total, se calcula y muestra el cambio.

6️⃣ Resumen de la Compra

Se muestra un resumen con los detalles de la transacción.

// Ingreso del pago por parte del cliente
Escribir "El total a pagar es: ", total_a_pagar
Escribir "¿Con cuánto pagará?:"
Leer monto_cliente

Mientras monto_cliente < total_a_pagar Hacer
    Escribir "El monto ingresado es insuficiente. Intente de nuevo."
    Leer monto_cliente
FinMientras

// Cálculo del cambio
cambio <- monto_cliente - total_a_pagar

Si monto_cliente > total_a_pagar Entonces
    Escribir "Cambio: ", cambio
FinSi

Escribir "Gracias por su compra."

📚 Conclusión

La Calculadora de Descuentos es una herramienta práctica que permite automatizar el proceso de cálculo de precios, descuentos y pagos en cualquier tipo de transacción comercial. La lógica simple y clara asegura que sea fácil de entender e implementar en cualquier lenguaje de programación. Ideal para tiendas físicas o proyectos educativos sobre programación y algoritmos.

💡 Sugerencia: Para personalizar este algoritmo, puedes cambiar los porcentajes de descuento, la validación de entradas o incluso agregar más detalles en el resumen de compra.
