import 'package:flutter/material.dart';

class IngresarDatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width60Percent = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF025951),
        title: Center(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Cédula',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Número de celular',
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sexo',
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Fecha de nacimiento',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: width60Percent,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Dirección',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción a realizar al presionar el botón
                  print('Botón "Guardar" presionado');
                },
                child: Text(
                  'Guardar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF025951),
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
