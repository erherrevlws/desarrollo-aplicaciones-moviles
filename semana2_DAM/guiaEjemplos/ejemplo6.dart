import 'dart:io';

void main () {
  stdout.write('Ingrese un numero entero positivo: ');
  int limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (limite <=0) {
    print('Debe ingresar un nunmero mayor que cero');
    return;
  }

  int numeroActual = 2;
  int suma = 0;

  while (numeroActual <= limite) {
    suma += numeroActual;
    numeroActual += 2;
  }
  print('La suma de los numero pares entre 1 y $limite es: $suma');
}