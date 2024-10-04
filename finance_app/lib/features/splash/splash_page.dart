import 'package:finance_app/common/constants/app_collors.dart';
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
            colors: [
              AppCollors.greenlightOne,
              AppCollors.greenlightTwo
              ],
          ),
        ),
        child: const Text("Finance", style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 50.0, 
          fontWeight: FontWeight.w700, 
          color: AppCollors.white),),
      ),
    );
  }
}