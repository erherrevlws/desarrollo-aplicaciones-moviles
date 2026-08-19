double celsiusAFahrenheit(double c) {
  return (c * 9 / 5) + 32;
}

double celsiusAKelvin(double c) {
  return c + 273.15;
}

void probarConversor() {
  double celsius = 25.0;
  double fahrenheit = celsiusAFahrenheit(celsius);
  double kelvin = celsiusAKelvin(celsius);

  print('--- Conversor de Temperatura ---');
  print('Celsius: ${celsius.toStringAsFixed(2)} °C');
  print('Fahrenheit: ${fahrenheit.toStringAsFixed(2)} °F');
  print('Kelvin: ${kelvin.toStringAsFixed(2)} K\n');
}

void main() {
  probarConversor();
}