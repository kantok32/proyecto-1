# Guardar el archivo README.md en formato Markdown

contenido = """
# Proyecto_1 - Exportación de Productos

## Descripción del Programa
El programa **Proyecto_1** es una calculadora automatizada diseñada para calcular el precio final de productos que serán exportados. El sistema permite seleccionar un producto, calcular su precio con impuestos, aplicar descuentos por cantidad y categoría, y determinar el costo de envío según el destino. Al final, muestra un resumen detallado con el costo total a pagar.

---

## 🔧 **Funcionalidades del Programa**

1. **Leer el precio original del producto.**
   - El programa solicita al usuario que seleccione uno de los tres productos disponibles:
     - **Leche (unidad de 200 ml)**
     - **Comida de perro (kg)**
     - **Comida de gato (kg)**
   - Cada producto tiene un precio base que será usado para los cálculos.

2. **Aplicar impuestos al producto (IVA del 19%).**
   - Una vez seleccionado el producto, se calcula el **precio unitario con IVA**. El IVA es del 19% sobre el precio base.

3. **Solicitar la cantidad de producto.**
   - El programa solicita la cantidad de unidades o kilogramos que se desea comprar.

4. **Aplicar un descuento por cantidad si es aplicable.**
   - Si el cliente compra **más de 100 unidades de leche o 100 kg de comida**, se aplica un descuento adicional del **10%** sobre el valor total de los productos antes de impuestos.

5. **Calcular el costo de envío basado en el destino.**
   - El costo de envío varía según la zona de entrega:
     - **Santiago:** $0 (envío gratuito).
     - **Zona Centro:** 20% del valor después del descuento por cantidad.
     - **Norte:** 40% del valor después del descuento por cantidad.
     - **Sur:** 60% del valor después del descuento por cantidad.

6. **Aplicar un descuento por categoría de cliente.**
   - El programa ofrece dos opciones de descuento por categoría de cliente:
     - **Sin descuento:** No se aplica ningún descuento adicional.
     - **Alumno UDD:** Descuento adicional del **15%** sobre el valor total después del envío.

7. **Calcular el costo final del producto.**
   - El costo final se calcula sumando:
     - Precio unitario con IVA × Cantidad.
     - Descuento por cantidad aplicado (si corresponde).
     - Costo de envío (según destino).
     - Descuento final por categoría de cliente (si corresponde).

8. **Mostrar un resumen final detallado.**
   - El programa muestra un resumen con los siguientes datos:
     - Producto seleccionado.
     - Cantidad comprada.
     - Precio unitario con IVA.
     - Valor total de productos antes del descuento.
     - Descuento por cantidad aplicado.
     - Valor después del descuento por cantidad.
     - Costo de envío.
     - Valor total después del envío.
     - Descuento final aplicado.
     - Valor total a pagar.


## 📌 **Dónde se aplican los conceptos principales:**

| **Concepto**               | **Descripción**                                                     | **Dónde se aplica en el programa**                         |
|----------------------------|---------------------------------------------------------------------|------------------------------------------------------------|
| Leer el precio original     | Se selecciona el producto y se obtiene su precio base.              | Sección de selección de producto.                         |
| Aplicar impuestos           | Se calcula el precio unitario con IVA del 19%.                     | Sección de cálculo del precio unitario con IVA.            |
| Aplicar descuento por cantidad | Se aplica un descuento del 10% si se compran más de 100 unidades. | Sección de cálculo del descuento por cantidad.             |
| Calcular costo de envío     | El costo de envío se basa en el destino seleccionado.               | Sección de cálculo del costo de envío.                     |
| Aplicar descuento por categoría | Se aplica un 15% de descuento si el cliente es Alumno UDD.       | Sección de aplicación del descuento final.                 |
| Calcular el costo final     | Se calcula el valor total sumando todos los componentes.            | Sección de cálculo del valor total a pagar.                |

---

## 🧩 **Conclusión**
Este programa permite calcular el precio final de productos exportados, aplicando impuestos, descuentos por cantidad y descuentos según la categoría del cliente. Además, calcula el costo de envío según la zona de entrega y muestra un resumen detallado de la compra.

Puedes personalizar este programa para agregar más productos, categorías de descuento o tarifas de envío según tus necesidades.

---

## ⚡ **Recomendaciones de Uso**
- **Verifica los cálculos:** Asegúrate de ingresar los valores correctamente.
- **Actualiza los precios:** Si los precios de los productos cambian, actualiza las variables correspondientes.
- **Prueba diferentes combinaciones:** Realiza pruebas con diferentes productos, cantidades y destinos para validar que el programa funcione correctamente.
"""

