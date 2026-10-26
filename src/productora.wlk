object productora {
  var impuesto = 21
  var anioActual = 2026
  const bandas = []
  const entradasVendidas = []

  method impuesto() = impuesto
  method anioActual() = anioActual

  method cambiarImpuesto(nuevoImpuesto) {
    impuesto = nuevoImpuesto
  }

  method cambiarAnioActual(nuevoAnio) {
    anioActual = nuevoAnio
  }

  method registrarBanda(banda) {
    bandas.add(banda)
  }

  method registrarEntrada(entrada) {
    entradasVendidas.add(entrada)
  }

  method cantidadEntradasVendidas() = entradasVendidas.size()

  method cantidadEntradasDe(unaBanda) =
    entradasVendidas.filter({ entrada =>
      entrada.banda() == unaBanda
    }).size()

  method recaudacion() =
    entradasVendidas.sum({ entrada => entrada.precio() })

  method presupuestoTotal() =
    bandas.sum({ banda => banda.presupuesto() })

  method gananciaTotal() =
    self.recaudacion() - self.presupuestoTotal()

  method bandaMasPopular() {
    if (bandas.size() == 0) {
      return null
    }

    return bandas.max({ banda =>
      self.cantidadEntradasDe(banda)
    })
  }

  method bonificarAsistente(unAsistente) {
    unAsistente.bonificarAbono()
  }

  method reiniciar() {
    bandas.clear()
    entradasVendidas.clear()
    impuesto = 21
    anioActual = 2026
  }
}
