import 'dart:ui';

import 'package:finance_app/common/constants/app_collors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(38.0)),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(38.0)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[Color.fromARGB(255, 211, 221, 220), Color.fromARGB(255, 211, 221, 220)],
          ),
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: const BorderRadius.all(Radius.circular(38.0)),
          child: Container(
            width: 350.0,
            height: 64.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(38.0)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppCollors.greenlightTwo, AppCollors.greenlightOne],
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'inter',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: AppCollors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}