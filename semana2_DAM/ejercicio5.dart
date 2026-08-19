void programaCorregido() {
  print('--- Reto de Depuración Corregido ---');
  
  //  Nombre de la variable descriptivo y el  double para permitir decimales
  double notaExamen1 = 8.5;
  double notaExamen2 = 7.0;

  //  Uso de división decimal (/) en lugar de entera 
  double promedioNotas = (notaExamen1 + notaExamen2) / 2;

  //  Variable null manejada correctamente con el operador ??
  String? correoUsuario;
  String correoMostrar = correoUsuario ?? 'No proporcionado';

 
  bool haAprobado = promedioNotas >= 6.0;

  print('Correo: $correoMostrar');
  print('Promedio: ${promedioNotas.toStringAsFixed(2)}');
  print('¿Aprobó el curso?: $haAprobado\n');
}

void main() {
  programaCorregido();
}