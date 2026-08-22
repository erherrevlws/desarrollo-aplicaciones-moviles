import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Información del Módulo',
      theme: ThemeData(
        useMaterial3: true,
        // Cambio para Hot Reload
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const PantallaInformacionModulo(),
    );
  }
}

// Implementacion con StatelessWidget según los requisitos
class PantallaInformacionModulo extends StatelessWidget {
  const PantallaInformacionModulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi módulo'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Container(
          // Margen externo 
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          // Padding interno 
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nombre del módulo
              Text(
                'Desarrollo de Aplicaciones Móviles',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              //  Primer SizedBox para control de espaciado
              const SizedBox(height: 16),

              
              const Text(
                'Duración: 80 horas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              //  Segundo SizedBox para control de espaciado
              const SizedBox(height: 12),

              // Texto: Modalidad
              const Text(
                'Modalidad: Semipresencial',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              //  Tercer SizedBox para control de espaciado
              const SizedBox(height: 12),

              
              const Text(
                'Tecnología principal: Flutter',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Icon(
                    Icons.school,
                    color: Theme.of(context).colorScheme.primary,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Técnico en Desarrollo de Software',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
