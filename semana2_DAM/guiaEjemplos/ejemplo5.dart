import 'dart:io';

void main() {
  stdout.write('Ingrese un numero entero: ');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print ('\n--- Tabla de multiplicar del $numero ---');
  for (int i = 1; i <=12; i++) {
   final int resultado = numero * i;
    print ('$numero x $i = $resultado'); 
  }
}
