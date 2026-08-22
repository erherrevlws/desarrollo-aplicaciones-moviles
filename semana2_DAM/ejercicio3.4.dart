class Cuenta {
  final String titular;
  double _saldo;


  Cuenta({
    required this.titular,
     double saldoInicial = 0.0
     }) : _saldo = saldoInicial >= 0 ? saldoInicial : 0.0;

     double get saldo => _saldo;

     void depositar(double monto) {
      if (monto <= 0) {
        print('Error: El monto a depositar debe ser mayor que cero.');
        return;
      }
      _saldo += monto;
      print('Depósito de \$${monto.toStringAsFixed(2)} realizado. Nuevo saldo: \$${_saldo.toStringAsFixed(2)}');
     }

     void retirar(double monto) {
      if (monto <= 0) {
        print('Error: El monto a retirar debe ser mayor que cero.');
        return;
      }
      if (monto > _saldo) {
        print('Error: Fondos insuficientes. Saldo actual: \$${_saldo.toStringAsFixed(2)}');
        return;
      }
      _saldo -= monto;
      print('Retiro de \$${monto.toStringAsFixed(2)} realizado. Nuevo saldo: \$${_saldo.toStringAsFixed(2)}');
     }
}

void main() {
  final cuenta = Cuenta(
    titular: 'Erick',
    saldoInicial: 100.0,
  );

  print('Titular: ${cuenta.titular}');
  print('Saldo inicial: \$${cuenta.saldo.toStringAsFixed(2)}');

  cuenta.depositar(50.0);
  cuenta.retirar(30.0);

  print('Saldo final: \$${cuenta.saldo.toStringAsFixed(2)}');
}
