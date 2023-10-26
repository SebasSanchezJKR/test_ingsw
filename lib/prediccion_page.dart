import 'package:flutter/material.dart';

// Valor predeterminado, puedes cambiarlo según sea necesario
class PrediccionPage extends StatefulWidget {
  const PrediccionPage({super.key});
  // Valor predeterminado, puedes cambiarlo según sea necesario
  @override
  // ignore: library_private_types_in_public_api
  _PrediccionPageState createState() => _PrediccionPageState();
}

class _PrediccionPageState extends State<PrediccionPage> {
  String? selectedGender; // Valor inicial seleccionado
  List<String> opcionesGender = ['Male', 'Female'];

  String? selectedMarried;
  List<String> opcionesMarried = ['Yes', 'No'];

  String? selectedWork;
  List<String> opcionesWork = [
    'Private',
    'Self-employed',
    'children',
    'Govt_job',
    'Never_worked'
  ];

  String? selectedResidence;
  List<String> opcionesResidence = ['Urban', 'Rural'];

  String? selectedSmoking;
  List<String> opcionesSmoking = [
    'never smoked',
    'smokes',
    'formely smoked',
    'Unknown'
  ];

  double selectedHipertension = 0.0;

  void onHipertensionChanged(double newValue) {
    setState(() {
      selectedHipertension = newValue;
    });
  }
  
  double selectedEnfermedadLvl = 0.0;

  void onEnfermedadLvlChanged(double newValue) {
    setState(() {
      selectedEnfermedadLvl = newValue;
    });
  }
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
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 20),
          Positioned(
            top: 0, // Coloca el recuadro en la parte superior
            left: 0, // Centra horizontalmente
            right: 0,
            child: Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF02735E),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const Center(
                child: Text(
                  'Ingrese información del paciente',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40, //Editar espacio columna 1 con el titulo
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Edad',
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true, // Establece el fondo como relleno
                        fillColor: Colors.white, // Color de fondo blanco
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 500,
                      child: DropdownButton<String?>(
                        value: selectedGender,
                        hint: const Text(
                          "Genero",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
      
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedGender = newValue;
                            });
                          }
                        },
                        items: ['Masculino', 'Femenino']
                            .map<DropdownMenuItem<String?>>((value) {
                          return DropdownMenuItem<String?>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: const TextStyle(
                            color: Colors.black), // Establece el color del texto
                        underline: Container(
                          height: 1, // Altura del subrayado
                          color: Colors.grey, // Color del subrayado
                        ),
                        dropdownColor:
                            Colors.white, // Color del fondo del menú desplegable
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nivel de Glucosa',
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true, // Establece el fondo como relleno
                        fillColor: Colors.white,
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Índice de Masa Corporal',
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true, // Establece el fondo como relleno
                        fillColor: Colors.white,
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                        width: 500,
                         // Establece la altura a 50 unidades
                        
                      child: Column (crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Nivel de Enfermedad Cardiaca',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Slider.adaptive(
                          
                          value: selectedEnfermedadLvl,
                          onChanged: (double newValue) {
                            setState(() {
                              selectedEnfermedadLvl = newValue;
                              
                            });
                            
                          },
                          min: 0.0, // Valor mínimo
                          max: 1.0, // Valor máximo
                          divisions: 200, // Número de divisiones
                          label:
                              selectedEnfermedadLvl.toStringAsFixed(1), 
                          activeColor: Colors.black, // Cambia el color de la barra
                          inactiveColor: Colors.grey, // Cambia el color de la parte inactiva de la barra
                          thumbColor: Colors.black, // Cambia el color del indicador deslizante// Etiqueta
                          mouseCursor: SystemMouseCursors.click,
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40, //Editar espacio de columna 2 con titulo
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 500,
                      child: DropdownButton<String?>(
                        value: selectedMarried,
                        hint: const Text(
                          "¿Está Casado?",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
      
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedMarried = newValue;
                            });
                          }
                        },
                        items:
                            ['Yes', 'No'].map<DropdownMenuItem<String?>>((value) {
                          return DropdownMenuItem<String?>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: const TextStyle(
                            color: Colors.black), // Establece el color del texto
                        underline: Container(
                          height: 1, // Altura del subrayado
                          color: Colors.grey, // Color del subrayado
                        ),
                        dropdownColor:
                            Colors.white, // Color del fondo del menú desplegable
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 500,
                      child: DropdownButton<String?>(
                        value: selectedWork,
                        hint: const Text(
                          "Tipo de trabajo",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
      
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedWork = newValue;
                            });
                          }
                        },
                        items: [
                          'Private',
                          'Self-employed',
                          'children',
                          'Govt_job',
                          'Never_worked'
                        ].map<DropdownMenuItem<String?>>((value) {
                          return DropdownMenuItem<String?>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: const TextStyle(
                            color: Colors.black), // Establece el color del texto
                        underline: Container(
                          height: 1, // Altura del subrayado
                          color: Colors.grey, // Color del subrayado
                        ),
                        dropdownColor:
                            Colors.white, // Color del fondo del menú desplegable
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 500,
                      child: DropdownButton<String?>(
                        value: selectedResidence,
                        hint: const Text(
                          "Tipo de residencia",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
      
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedResidence = newValue;
                            });
                          }
                        },
                        items: ['Urban', 'Rural']
                            .map<DropdownMenuItem<String?>>((value) {
                          return DropdownMenuItem<String?>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: const TextStyle(
                            color: Colors.black), // Establece el color del texto
                        underline: Container(
                          height: 1, // Altura del subrayado
                          color: Colors.grey, // Color del subrayado
                        ),
                        dropdownColor:
                            Colors.white, // Color del fondo del menú desplegable
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 500,
                      child: DropdownButton<String?>(
                        value: selectedSmoking,
                        hint: const Text(
                          "Categoría de fumador",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
      
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedSmoking = newValue;
                            });
                          }
                        },
                        items: [
                          'never smoked',
                          'smokes',
                          'formely smoked',
                          'Unknown'
                        ].map<DropdownMenuItem<String?>>((value) {
                          return DropdownMenuItem<String?>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: const TextStyle(
                            color: Colors.black), // Establece el color del texto
                        underline: Container(
                          height: 1, // Altura del subrayado
                          color: Colors.grey, // Color del subrayado
                        ),
                        dropdownColor:
                            Colors.white, // Color del fondo del menú desplegable
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                        width: 500,
                         // Establece la altura a 50 unidades
                        
                      child: Column (crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Nivel de Hipertensión',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Slider.adaptive(
                          
                          value: selectedHipertension,
                          onChanged: (double newValue) {
                            setState(() {
                              selectedHipertension = newValue;
                              
                            });
                            
                          },
                          min: 0.0, // Valor mínimo
                          max: 1.0, // Valor máximo
                          divisions: 200, // Número de divisiones
                          label:
                              selectedHipertension.toStringAsFixed(1), 
                          activeColor: Colors.black, // Cambia el color de la barra
                          inactiveColor: Colors.grey, // Cambia el color de la parte inactiva de la barra
                          thumbColor: Colors.black, // Cambia el color del indicador deslizante// Etiqueta
                          mouseCursor: SystemMouseCursors.click,
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            )
          ]),
        ]),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF025951),
        height: 50,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFB1F5C0),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.white, width: 1),
              ),
              minimumSize: const Size(190, 100),
            ),
            child: const Text(
              'Predecir',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
