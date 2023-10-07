/*import 'package:flutter/material.dart';

class SistemaPrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      body: Center(
        child: Text('Esta es la página principal'),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'login_page.dart'; // Importa la página de inicio de sesión para volver atrás

class SistemaPrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.5; // Ancho máximo de los botones
    double verticalPadding = 15.0; // Aumento vertical del padding de los botones

    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema para la prevención de problemas cardíacos'),
        backgroundColor: Color(0xFF025951),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Menú Principal',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF025951),
                ),
              ),
            ),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  print('Botón "Registrar Paciente" presionado');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  child: Text(
                    'Registrar Paciente',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF025951),
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  print('Botón "Predicción" presionado');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  child: Text(
                    'Predicción',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF025951),
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  print('Botón "Resultado" presionado');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  child: Text(
                    'Resultado',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF025951),
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  print('Botón "Historia Paciente" presionado');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  child: Text(
                    'Historia Paciente',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF025951),
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Image.asset('assets/pablo.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}