import 'dart:io';

void main() {
  stdout.write('Ingrese una calificacion entre 0 y 10: ');
  double? calificacion = double.tryParse(stdin.readLineSync() ?? '');

  if (calificacion == null || calificacion < 0 || calificacion > 10) {
  print('Calificacion invalida. Debe estar entre 0 y 10.');
  return;
  } 

if(calificacion >=9){
  print('Categoria : Excelente');
} else if (calificacion >= 8){
  print('Categoria : Muy bueno');
} else if (calificacion >= 7){
  print('Categoria : Bueno');
} else if (calificacion >= 6){
  print('Categoria : Aprobado');
} 
else {
  print('Categoria : Reprobado');

}

}
