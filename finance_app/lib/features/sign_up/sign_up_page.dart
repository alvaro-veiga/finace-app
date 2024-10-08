import 'package:finance_app/common/constants/app_collors.dart';
import 'package:finance_app/widgets/custom_text_button.dart';
import 'package:finance_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           const Text('Start Saving',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontFamily: 'inter',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: AppCollors.greenlightTwo
          ),),
          const Text('Your Money!',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontFamily: 'inter',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: AppCollors.greenlightTwo
          ),
          ),
          Expanded(
            child: Image.asset('assets/images/sing_up.png')
          ),
          TextFormField(),
          const TextField(),
          PrimaryButton(text: 'Sign Up', onPressed: () {},),
          CustomTextButton(
          onPressed: () {},
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
    );
  }
}