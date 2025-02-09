import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../domain/core/constants.dart';

class AppTextBox extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final FloatingLabelBehavior floatingLabelBehavior;
  final Function(String?)? onChangeCallback;
  final List<TextInputFormatter> textInputFormatter;
  const AppTextBox({
    super.key,
    required this.controller,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.isReadOnly = false,
    this.onTap,
    this.validator,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.onChangeCallback,
    this.textInputFormatter = const [],
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isReadOnly,
      onTap: onTap,
      onChanged: onChangeCallback,
      validator: validator,
      inputFormatters: textInputFormatter,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Get.textTheme.labelLarge?.copyWith(
          color: Colors.grey.shade400,
        ),
        floatingLabelBehavior: floatingLabelBehavior,
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: primaryColor) : null,
        suffixIcon:
            suffixIcon != null ? Icon(suffixIcon, color: primaryColor) : null,
        border: OutlineInputBorder(), // Default border
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey.shade400), // Border when not focused
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: primaryColor, width: 2), // Border when focused
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.red, width: 2), // Border when focused
        ),
      ),
    );
  }
}
