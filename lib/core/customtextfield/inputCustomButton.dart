import 'package:emcommercelite/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Inputcustombutton extends StatelessWidget {
  const Inputcustombutton({
    super.key,
    required this.labelText,
    required this.controller,
    required this.prefixIcon,
    required this.hint,
    required this.validator,
    required this.keyboardType,
    this.obscureText,
  });

  final IconData prefixIcon;
  final TextInputType keyboardType;
  final String labelText;
  final bool? obscureText;
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hint,
          prefixIcon: Icon(
            prefixIcon,
            color: AppTheme.primaryColor.withOpacity(0.7),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
