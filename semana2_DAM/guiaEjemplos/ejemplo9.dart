import 'dart:io';

void main() {
  final Map<String, int> inventario = {
    'P001': 15,
    'P002': 30,
    'P003': 20,
  };

  print('---Inventario Disponible ---');
  inventario.forEach((codigo, existencia) {
    print('$codigo: $existencia unidades');
  });

  stdout.write('\nIngrese el código del producto a consultar: ');
  final String codigoProducto = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  final int? existencia = inventario[codigoProducto];
  if (existencia == null) {
    print('El producto $codigoProducto no se encuentra en el inventario.');
  } else if (existencia == 0) {
    print('El producto $codigoProducto está agotado.');
  }
  
  else {
    print('El producto $codigoProducto tiene $existencia unidades disponibles.');
  }
}