Decisiones de diseño y conceptos de la materia

1. Herencia

Las tres clases representan distintos tipos de bandas y comparten características, como el nombre, el canon base y el cálculo del presupuesto. La herencia permite reutilizar ese comportamiento común y definir las diferencias de cada tipo sin duplicar todo el código.
Se puede ver este concepto aplicado en las bandas.

2. Polimorfismo

El polimorfismo permite que el sistema calcule los valores de cada banda o el descuento de cada abono sin tener que concentrar todas las variantes en una única operación.

3. Encapsulamiento

El objeto administra sus propios datos y ofrece métodos para realizar operaciones sobre ellos. Por ejemplo, la compra actualiza el dinero y el historial del asistente, mientras que la productora administra el registro de ventas. De esta manera se mantienen las modificaciones con la responsabilidad de cada objeto.

4. Abstracción

El concepto de abstraccion se aplica mediante la clase banda, que reune caracteristicas y comportamientos comunes a los distintos tipos de bandas. Tambien se observa en Entrada, que ofrece el mensaje precio() para obtener el precio final sinque el asistente tenga que calcular el impuesto.

5. Colaboración entre objetos

La compra requiere que varios objetos colaboren. La entrada calcula su precio, el abono determina el descuento, el asistente verifica el dinero disponible y actualiza su historial, y la productora registra la venta. Esta distribución permite que cada objeto cumpla una responsabilidad concreta.

El diagrama de clases lo realice en Draw.io y para subirlo como foto no se llegaba a ver todo el diagrama, se iba a ver muy chiquito las letras por eso descargue el diagrama y lo subi al repositorio. Cualquier fallo o inquietud puedo corregirlo, Muchas gracias.
