void main() {
  final ventas = <double>[45.0, 120.50, 150.0, 75.25, 89.75];

  final total = ventas.fold(0.0, (acumulado, venta) => acumulado + venta);

  final promedio = total / ventas.length;

  final ventaMayor = ventas.reduce((a, b) => a > b ? a : b);

  final ventaMayores50  = ventas.where((venta) => venta > 50).toList();

  print('-- Reporte de Ventas --');
  print('Ventas registradas: $ventas');
  print('Total de ventas: \$${total.toStringAsFixed(2)}');
  print('Promedio de ventas: \$${promedio.toStringAsFixed(2)}');
  print('Venta mayor: \$${ventaMayor.toStringAsFixed(2)}');
  print('Ventas mayores a \$50: $ventaMayores50');}