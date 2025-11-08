import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon == const SizedBox() ? null : prefixIcon,
        suffixIcon: suffixIcon == const SizedBox() ? null : suffixIcon,
        hintText: title,
        filled: true,
        fillColor: AppColors.white,
        hintStyle: AppTextStyles.text16Reg.copyWith(color: AppColors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
