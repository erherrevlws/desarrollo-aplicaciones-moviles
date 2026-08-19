class Estudiante {
  final String nombre;
  final String carrera;
  final List<double> _notas;

  Estudiante({
    required this.nombre,
    required this.carrera,
    List<double>? notasIniciales,
  }) : _notas = notasIniciales != null ? List.from(notasIniciales) : [];

  List<double> get notas => List.unmodifiable(_notas);

  // Método para agregar nota con validación
  void agregarNota(double nota) {
    if (nota < 0 || nota > 10) {
      print('Error: La calificación $nota no es válida debe estar entre 0.0 y 10.0.');
      return;
    }
    _notas.add(nota);
    print('Nota $nota agregada correctamente a $nombre.');
  }

  double get promedio {
    if (_notas.isEmpty) return 0.0;
    final suma = _notas.fold(0.0, (acc, n) => acc + n);
    return suma / _notas.length;
  }

  bool get aprobado => promedio >= 7.0;
}

void main() {
  final estudiante = Estudiante(
    nombre: 'Carlos Rivera',
    carrera: 'Desarrollo de Software',
    notasIniciales: [8.5, 7.0],
  );

  estudiante.agregarNota(9.0);
  estudiante.agregarNota(11.0); 

  print('\n--- Información Académica ---');
  print('Estudiante: ${estudiante.nombre}');
  print('Carrera: ${estudiante.carrera}');
  print('Calificaciones: ${estudiante.notas}');
  print('Promedio: ${estudiante.promedio.toStringAsFixed(2)}');
  print('Estado: ${estudiante.aprobado ? 'Aprobado' : 'Reprobado'}');
}