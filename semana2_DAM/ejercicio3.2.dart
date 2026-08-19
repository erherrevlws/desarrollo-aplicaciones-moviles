void main() {
  final inventario = <Map<String, dynamic>>[
    {'producto': 'Laptop', 'precio': 1200.0, 'stock': 5},
    {'producto': 'Mouse', 'precio': 25.0, 'stock': 50},
    {'producto': 'Teclado', 'precio': 45.0, 'stock': 30},
    {'producto': 'Monitor', 'precio': 300.0, 'stock': 10},
    {'producto': 'Impresora', 'precio': 150.0, 'stock': 8},
  ];

  double valorTotalInventario = 0.0;

  print('-- Productos Disponibles --');
  for (final item in inventario) {
    final producto = item['producto'] as String? ?? 'Sin nombre';
    final precio = (item['precio'] as num?)?.toDouble() ?? 0.0;
    final stock = (item['stock'] as int?)?.toInt() ?? 0;

    if (stock > 0) {
      final subtotal = precio * stock;
      valorTotalInventario += subtotal;
      print('• $producto | Stock: $stock | Precio unitario: \$${precio.toStringAsFixed(2)} | Subtotal: \$${subtotal.toStringAsFixed(2)}');
    }
  }
print('\nValor total del inventario: ${valorTotalInventario.toStringAsFixed(2)}');}