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
            child: Column(
              children: [
                CustomTextFormField(),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          PrimaryButton(
            text: 'Sign Up',
            onPressed: () {},
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

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  const CustomTextFormField({
    Key ? key,
    this.padding,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppCollors.greenlightTwo)
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0
      ),
      child: TextFormField(
        decoration:  InputDecoration(
          labelText: "your name".toUpperCase(),
          labelStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 14.0,
            fontWeight: FontWeight.w400
          ).copyWith(color: AppCollors.darkGrey),
          focusedBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            )
          ),
          errorBorder: defaultBorder,
          focusedErrorBorder: defaultBorder,
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}