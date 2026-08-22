import 'dart:io';

void main() {
    stdout.write('Ingrese un numero entero: ');
    int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (numero > 0) {
      print('El numero $numero es positivo.');
    } else if (numero < 0) {
      print('El numero $numero no es positivo.');
    } else {
      print('El numero $numero es cero.');
    }

    if (numero % 2 == 0) {
      print('El numero es par');
    } else {
      print('El numero es impar');
    }
}