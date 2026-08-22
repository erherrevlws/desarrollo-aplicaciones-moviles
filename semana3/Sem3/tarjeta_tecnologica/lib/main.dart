import 'package:flutter/material.dart';

void main(){
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //ocultamos la etiqueta roja de debug
      debugShowCheckedModeBanner: false,
      title: 'Tecnologias Moviles',

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      home: const PantallaTecnologia(),

    );
  }
}

class PantallaTecnologia extends StatelessWidget {
  const PantallaTecnologia({super.key});

  @override
  Widget build(BuildContext context){

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Teconologias Moviles'),
        centerTitle: true,
        backgroundColor: colorScheme.primaryContainer,
      ),

      body: Center(
        child: Container(
          width: 360,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(24),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.16),
                blurRadius: 16,
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.phone_android,
                size: 70,
                color: colorScheme.primary,

              ),

              const SizedBox(height: 16),

              Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                'Framework para desarrollo multiplataforma',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorScheme.onSurfaceVariant,
              ),
              ),

              const SizedBox(height: 28),
              Divider(
                color: colorScheme.outlineVariant.withOpacity(0.5),
                thickness: 1,
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.android,
                        size: 36,
                        color: Colors.green,
                      ),
                      const SizedBox(height: 8,),
                      const Text(
                        'Android',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.language,
                        size: 36,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Web',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.desktop_windows,
                        size: 36,
                        color: colorScheme.secondary,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Desktop',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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