import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CustomTextInput({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        errorStyle: const TextStyle(height: 0.8),
        errorMaxLines: 2,
      ),
    );
  }
}
