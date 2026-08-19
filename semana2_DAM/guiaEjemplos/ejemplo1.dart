import 'dart:io';

void main() {
    stdout.write('Ingrese su nombre: ');
    final String nombre = stdin.readLineSync()?.trim() ?? 'Sin nombre';

    stdout.write('Ingrese su edad: ');
    final int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    stdout.write('Ingrese su ciudad de residencia: ');
    final String ciudad = stdin.readLineSync()?.trim() ?? 'No espeficida';

    final int edadFutura = edad + 5;

    print('\n--- Resumen ---');
    print('Nombre: $nombre');
    print('Edad actual: $edad años');
    print('Ciudad: $ciudad');
    print('Dentro de cinco años tendra : $edadFutura años');


}