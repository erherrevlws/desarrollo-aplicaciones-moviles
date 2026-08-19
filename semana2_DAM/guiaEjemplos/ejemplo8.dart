import 'dart:io';

double calcularPromedio(List<double> valores) {
  if (valores.isEmpty) {
    return 0.0;
  }
  double suma = 0;
  for (final double valor in valores) {
    suma += valor;
  }
  return suma / valores.length;

}

void main() {
    List<double> calificaciones = [];

    for (int i = 1; i <= 5; i++) {
        stdout.write('Ingrese la calificación $i: ');
        double calificacion = double.parse(stdin.readLineSync() ?? '0') ?? 0.0;
        calificaciones.add(calificacion);
    }
    double promedio = calcularPromedio(calificaciones);
    double mayor = calificaciones.reduce((actual, siguiente) => actual > siguiente ? actual : siguiente);

    double menor = calificaciones.reduce((actual, siguiente) => actual < siguiente ? actual : siguiente);

    int aprobados = calificaciones
    .where((calificacion) => calificacion >= 6.0).length;

    print('\n ---Estadisticas ----');
    print('Calificaciones: $calificaciones');
    print('Mayor calificación: $mayor');
    print('Menor calificación: $menor');
    print('Promedio: ${promedio.toStringAsFixed(2)}');
    print('Cantidad de aprobados: $aprobados');
}