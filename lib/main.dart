import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        /*appBar: AppBar(
          title: const Text('Bienvenido a mi APP'),
        ),*/
        backgroundColor: const Color(0xff00D1FF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Bienvenido',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 72,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ingresa tu ID',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                    //hint
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Ingresar'))
            ],
          ),
        ),
      ),
    );
  }
}
