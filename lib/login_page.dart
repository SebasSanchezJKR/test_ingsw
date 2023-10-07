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
import 'sistema_principal.dart'; // Importa la página nueva

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF025951),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Columna izquierda
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Color(0xFF025951),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Text(
                  "Sistema para la prevención de problemas cardíacos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 100),
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
                SizedBox(height: 20),
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
                SizedBox(height: 120),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navegar a la nueva página al hacer clic en el botón
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SistemaPrincipalPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Ingresar',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[200],
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
                  width: 450,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
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
