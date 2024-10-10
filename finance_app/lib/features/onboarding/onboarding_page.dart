import 'dart:math';

import 'package:finance_app/common/constants/app_collors.dart';
import 'package:finance_app/widgets/custom_text_button.dart';
import 'package:finance_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
        children: [
          const SizedBox(height: 60.0,),
          Expanded(
            child: Container(
              color: AppCollors.iceWhite,
              child: Image.asset("assets/images/finance.png"),
              )
          ),
          const Text('Spend smarter', style: TextStyle(
            fontFamily: 'inter',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: AppCollors.greenlightTwo
          ),),
          const Text('Save more', style: TextStyle(
            fontFamily: 'inter',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: AppCollors.greenlightTwo
          ),),
          PrimaryButton(text: 'Get started', onPressed: () {},),
          CustomTextButton(
          onPressed: () => log(1),
          children: [ 
          Text(
            'Already have account? ',
            style: TextStyle(
              fontFamily: 'inter',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: AppCollors.grey
            )
          ),
        Text(
          'Log in ',
          style: TextStyle(
            fontFamily: 'inter',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: AppCollors.greenlightTwo
          )
        )],
        ),
        ],
      ),
      ),
      
    );
  }
}


