import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 99, 175, 165),
                    Color(0xFF438883)],
          ),
        ),
        child: const Text("Finance", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700, color: Color(0xffffffff)),),
      ),
    );
  }
}