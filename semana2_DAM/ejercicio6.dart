
double calcularPromedio(double n1, double n2, double n3) {
  return (n1 + n2 + n3) / 3;
}

String determinarEstado(double promedio, double asistencia) {
  if (asistencia < 75) {
    return 'Sin derecho';
  } else if (promedio >= 7.0) {
    return 'Aprobado';
  } else if (promedio >= 6.0) {
    return 'En recuperación';
  } else {
    return 'Reprobado';
  }
}

String generarRecomendacion(double promedio, double asistencia) {
  if (asistencia < 75) {
    return 'Debe ponerse al día con sus asistencias.';
  } else if (promedio >= 7.0) {
    return 'Buen trabajo, sigue así.';
  } else if (promedio >= 6.0) {
    return 'Estudia para la recuperación.';
  } else {
    return 'Solicita tutorías con el docente.';
  }
}

void main() {
  
  final String nombre = 'Bryan Bonilla';
  final String codigo = 'IS2026';
  final double nota1 = 8.5;
  final double nota2 = 6.5;
  final double nota3 = 9.0;
  final double asistencia = 85.0;
  final String? correo = null;

  
  if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10 || nota3 < 0 || nota3 > 10) {
    print('Error: Las notas deben estar entre 0 y 10.');
    return;
  }

  if (asistencia < 0 || asistencia > 100) {
    print('Error: La asistencia debe estar entre 0 y 100.');
    return;
  }

 
  double promedio = calcularPromedio(nota1, nota2, nota3);
  String estado = determinarEstado(promedio, asistencia);
  String recomendacion = generarRecomendacion(promedio, asistencia);
  String correoMostrar = correo ?? 'No registrado';

  
  print('--- REPORTE ACADÉMICO ---');
  print('Estudiante: $nombre ($codigo)');
  print('Correo: $correoMostrar');
  print('Notas: $nota1 | $nota2 | $nota3');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
  print('Asistencia: ${asistencia.toStringAsFixed(2)}%');
  print('Estado: $estado');
  print('Recomendación: $recomendacion');
}