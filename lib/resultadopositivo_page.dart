import 'package:flutter/material.dart';

class ResultadoPositivoPage extends StatelessWidget {
  const ResultadoPositivoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF025951),
          title: const Center(
            child: Text(
              'Sistema para la prevención de problemas cardíacos',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF025951),
        body: Column(children: [
          const SizedBox(height: 20),
          Positioned(
            top: 0, // Coloca el recuadro en la parte superior
            left: 0, // Centra horizontalmente
            right: 0,
            child: Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFB1F5C0),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Center(
                child: Text(
                  'Predicción: Positivo para problemas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
