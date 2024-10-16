import 'dart:developer';

import 'package:finance_app/common/constants/app_collors.dart';
import 'package:finance_app/common/utils/validator.dart';
import 'package:finance_app/widgets/custom_text_button.dart';
import 'package:finance_app/widgets/custom_text_form_field.dart';
import 'package:finance_app/widgets/password_form_field.dart';
import 'package:finance_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formkey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Start Saving',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'inter',
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: AppCollors.greenlightTwo,
            ),
          ),
          const Text(
            'Your Money!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'inter',
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: AppCollors.greenlightTwo,
            ),
          ),
          const SizedBox(height: 20.0),
          Image.asset('assets/images/sing_up.png'),
          const SizedBox(height: 20.0),
          Form(
            key: _formkey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: 'your name',
                  hintText: 'John Doe',
                  icon: const Icon(Icons.person),
                  validator: Validator.validateName ,
                ),
                const SizedBox(height: 20.0),
                CustomTextFormField(
                  labelText: 'your email',
                  hintText: 'email@email.com',
                  icon: const Icon(Icons.email),
                  validator: Validator.validateEmail ,
                ),
                const SizedBox(height: 20.0),
                PasswordFormField(
                  controller: _passwordController,
                  labelText: 'choose your password',
                  hintText: '********',
                  validator: Validator.validatePassword,
                  helperText: "Must have at least 8 characters, 1 capital letter and 1 number",
                ),
                const SizedBox(height: 20.0),
                PasswordFormField(
                  labelText: 'confirm your password',
                  hintText: '********',
                  validator: (value) => Validator.validateConfirmPassword(value, _passwordController.text),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          PrimaryButton(
            text: 'Sign Up',
            onPressed: () {
              final valid = _formkey.currentState != null && _formkey.currentState!.validate();
              if(valid) {
                log('continuar lógica de login');
              }else {
                log('erro ao logar');
              }
            },
          ),
          const SizedBox(height: 10.0),
          CustomTextButton(
            onPressed: () {},
            children: [
              Text(
                'Already have account? ',
                style: TextStyle(
                  fontFamily: 'inter',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: AppCollors.grey,
                ),
              ),
              Text(
                'Log in ',
                style: TextStyle(
                  fontFamily: 'inter',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: AppCollors.greenlightTwo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

