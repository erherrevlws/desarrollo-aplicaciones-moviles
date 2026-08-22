import 'dart:math' as math;

abstract class Figura {
  final String nombre;
  Figura(this.nombre);

  double calcularArea();
}

class Rectangulo extends Figura {
  final double base;
  final double altura;

  Rectangulo({
    required this.base, 
    required this.altura
    }) : super('Rectángulo');

    @override
    double calcularArea() => base * altura;
  
}

class Circulo extends Figura {
  final double radio;

  Circulo({
    required this.radio
    }) : super('Círculo');

    @override
    double calcularArea() => math.pi * math.pow(radio, 2);
  
}


void main() {
  final figuras = <Figura>[
    Rectangulo(base: 6.0, altura: 4.0),
    Circulo(radio: 3.5),
    Rectangulo(base: 10.0, altura: 2.5),
  ]; 

  print('--- Calculo de Areas  ---'); 
  for (final figura in figuras) {
    print('Figura: ${figura.nombre}, Área: ${figura.calcularArea().toStringAsFixed(2)}');
  }

}