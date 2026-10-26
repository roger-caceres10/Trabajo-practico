class Banda {
  const nombre

  method nombre() = nombre
  method canon() = 1000000
  method gastoExtra() = 0
  method presupuesto() = self.canon() + self.gastoExtra()
  method popularidad() = 0
}

class BandaRock inherits Banda {
  const cantidadSolos

  override method gastoExtra() = 10000
  override method popularidad() = cantidadSolos * 100
}

class BandaTrap inherits Banda {
  const tieneHielo

  override method popularidad() {
    if (tieneHielo) {
      return 1000
    }
    return 0
  }

  override method canon() = self.popularidad() * 1000000
}

class BandaIndie inherits Banda {
  const instrumentos

  override method gastoExtra() = instrumentos.size() * 500
  override method popularidad() = 3.14 * nombre.size()
}
