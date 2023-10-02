import 'package:flutter/material.dart';

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
}