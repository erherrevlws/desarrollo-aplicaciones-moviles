import 'dart:io';

void main(){
  stdout.write('Ingrese el primer numero: ');
  double numero1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Ingrese el segundo numero: ');
  double numero2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('\n--- Resultados ---');
  print('Suma: ${numero1 + numero2}');
  print('Resta: ${numero1 - numero2}');
  print('Multiplicación: ${numero1 * numero2}');
  if (numero2 != 0) {
    print('División: ${numero1 / numero2}');
    print('Residuo: ${numero1 % numero2}');
  } else {
    print('División: No se puede dividir entre cero');
    print('Residuo: No se puede calcular el residuo');

  }
}