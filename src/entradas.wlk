import src.productora.*

class Entrada {
  const banda
  const anio

  method banda() = banda
  method anio() = anio
  method precioBase() = 1000

  method precio() =
    self.precioBase() + self.precioBase() * productora.impuesto() / 100
}

