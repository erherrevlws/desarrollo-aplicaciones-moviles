import 'dart:io';

double convertirCelciusAFahrenheit(double celcius) {
    return (celcius * 9 / 5) + 32;
}

void main() {
    stdout.write('Ingrese la temperatura en grados Celcius: ');
    double celcius = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

    double fahrenheit = convertirCelciusAFahrenheit(celcius);

    print(
        '${celcius.toStringAsFixed(2)} °C equivalen a '
        '${fahrenheit.toStringAsFixed(2)} °F',
    );
} 