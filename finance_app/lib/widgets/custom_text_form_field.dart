import 'package:finance_app/common/constants/app_collors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Icon? icon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final String? helperText;
  const CustomTextFormField({
    Key ? key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.keyBoardType,
    this.maxLength,
    this.textInputAction,
    this.icon,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.helperText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppCollors.greenlightTwo)
  );


  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0
      ),
      child: TextFormField(
        onChanged: (value) {
          if(value.length == 1){
            setState(() {
              _helperText = null;
            });
          }else if (value.isEmpty){
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        textInputAction: widget.textInputAction,
        maxLength: widget.maxLength,
        keyboardType: widget.keyBoardType,
        controller: widget.controller,
        textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
        decoration:  InputDecoration(
          helperMaxLines: 3,
          helperText: _helperText,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.icon,
          hintText: widget.hintText,
          labelText: widget.labelText?.toUpperCase(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 14.0,
            fontWeight: FontWeight.w400
          ).copyWith(color: AppCollors.darkGrey),
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            )
          ),
          focusedErrorBorder: defaultBorder,
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}