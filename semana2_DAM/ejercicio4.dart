String validarAcceso(String usuario, String contrasena, bool estaActivo) {
  if (usuario.isEmpty || contrasena.isEmpty) {
    return 'Error: Los campos no pueden estar vacíos.';
  }
  if (usuario != 'admin' || contrasena != '1234') {
    return 'Error: Credenciales incorrectas.';
  }
  if (!estaActivo) {
    return 'Error: El usuario está inactivo.';
  }
  return 'Acceso concedido.';
}

void main() {
  print('--- Validador de Acceso ---');
  print(validarAcceso('admin', '1234', true));
}