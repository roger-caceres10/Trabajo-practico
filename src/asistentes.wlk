import src.entradas.*
import src.productora.*

class Asistente {
  const abono
  var dinero
  const historial = []

  method dineroDisponible() = dinero
  method historial() = historial
  method abono() = abono

  method comprarEntrada(banda, anio) {
    if (dinero <= 0) {
      console.println("No puede comprar: debe tener saldo positivo.")
    } else {
      const entrada = new Entrada(banda = banda, anio = anio)
      const precio = abono.aplicarDescuento(entrada.precio())

      if (dinero >= precio) {
        dinero = dinero - precio
        historial.add(entrada)
        productora.registrarEntrada(entrada)
        console.println("Compra realizada con éxito.")
      } else {
        console.println("No tiene dinero suficiente para comprar la entrada.")
      }
    }
  }

  method entradasDelAnioAnterior() =
    historial.filter({ entrada =>
      entrada.anio() == productora.anioActual() - 1
    })

  method bandasCompradas() =
    historial.map({ entrada => entrada.banda().nombre() })

  method bonificarAbono() {
    if (abono.esVip()) {
      abono.bonificar()
    }
  }
}

