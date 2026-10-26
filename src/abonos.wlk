class AbonoFan {
  method aplicarDescuento(precio) = precio
  method bonificar() {}
  method esVip() = false
}

class AbonoVip {
  var porcentajeDescuento

  method aplicarDescuento(precio) =
    precio - precio * porcentajeDescuento / 100

  method bonificar() {
    porcentajeDescuento = porcentajeDescuento + 1
  }

  method porcentajeDescuento() = porcentajeDescuento
  method esVip() = true
}
