import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final Widget suffixIcon;
  final TextStyle? style;
  final TextEditingController? controller;
  final Function(String value)? onChange;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon = const SizedBox(),
    this.controller,
    this.onChange,
    this.validator,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      cursorColor: AppColors.deepOrange,
      onChanged: onChange,
      style: const TextStyle(color: AppColors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        filled: true,
        hintStyle: const TextStyle(color: AppColors.mediumGray),
        fillColor: AppColors.creamWhite,
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.deepOrange)
            : null,
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
