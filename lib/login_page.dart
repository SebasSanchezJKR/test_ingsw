/*import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF025951),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Sistema para la prevención de problemas cardíacos",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 48,
            ),
          ),
          const Spacer(),
          TextFormField(),
          const Spacer(),
          const SizedBox(
            height: 60,
            width: 120,
            child: InkWell(),
          ),
        ]
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF025951),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centrar contenido horizontalmente
        children: [
          // Columna izquierda
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Color(0xFF025951),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Centrar contenido verticalmente
              children: [
                SizedBox(height: 80), // Espacio superior
                Text(
                  "Sistema para la prevención de problemas cardíacos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20), // Espacio entre el texto y el campo de texto
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Usuario',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 10), // Espacio entre campos de texto
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20), // Espacio entre el campo de texto y el botón
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción a realizar al presionar el botón
                    },
                    child: Text('Ingresar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[200], // Color verde claro
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          // Columna derecha
          Expanded(
            child: Container(
              color: Color(0xFFB1F5C0),
              child: Center(
                child: Container(
                  width: 450, // Ancho del cuadrado
                  height: 450, // Alto del cuadrado
                  decoration: BoxDecoration(
                    color: Colors.white, // Color blanco
                    borderRadius: BorderRadius.circular(50.0), // Bordes redondeados
                  ),
                  child: Center(
                    child: Image.asset('assets/pablo.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
