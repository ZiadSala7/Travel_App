import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomPasswordTextFormField({
    super.key,
    required this.title,
    this.prefixIcon,
    required this.controller,
    this.validator,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      style: const TextStyle(color: AppColors.black),
      cursorColor: AppColors.deepOrange,
      controller: widget.controller,
      obscureText: isClicked,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null
            ? Icon(widget.prefixIcon, color: AppColors.deepOrange)
            : null,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: isClicked
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility, color: AppColors.warmOrange),
        ),
        hintText: widget.title,
        hintStyle: AppTextStyles.text16Reg.copyWith(
          color: AppColors.mediumGray,
        ),
        filled: true,
        fillColor: AppColors.creamWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.mediumGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.airplane, width: 1),
        ),
      ),
    );
  }
}
