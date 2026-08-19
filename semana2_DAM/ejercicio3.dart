void calcularCompra(double subtotal, bool tieneMembresia) {
  print('--- Calculadora de Compra ---');
  double porcentajeDescuento = 0.0;

  if (subtotal > 100) {
    porcentajeDescuento += 0.05;
  }

  if (tieneMembresia) {
    porcentajeDescuento += 0.03;
  }

  // Límite máximo de 15%
  if (porcentajeDescuento > 0.15) {
    porcentajeDescuento = 0.15;
  }

  double descuento = subtotal * porcentajeDescuento;
  double subtotalConDescuento = subtotal - descuento;
  double iva = subtotalConDescuento * 0.13;
  double total = subtotalConDescuento + iva;

  print('Subtotal original: \$${subtotal.toStringAsFixed(2)}');
  print('Descuento (${(porcentajeDescuento * 100).toStringAsFixed(0)}%): \$${descuento.toStringAsFixed(2)}');
  print('IVA (13%): \$${iva.toStringAsFixed(2)}');
  print('Total a pagar: \$${total.toStringAsFixed(2)}\n');
}

void main() {
  calcularCompra(120.0, true);
}