void clasificarEdad(int edad) {
  print('--- Clasificación de Edad ---');
  if (edad < 0 || edad > 120) {
    print('Edad $edad: Error, la edad debe estar entre 0 y 120 años.\n');
    return;
  }

  if (edad <= 11) {
    print('Edad $edad: Niñez\n');
  } else if (edad <= 17) {
    print('Edad $edad: Adolescencia\n');
  } else if (edad <= 64) {
    print('Edad $edad: Adultez\n');
  } else {
    print('Edad $edad: Adulto mayor\n');
  }
}

void main() {
  clasificarEdad(16);
}