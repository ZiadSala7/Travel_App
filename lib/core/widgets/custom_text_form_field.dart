import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final Widget suffixIcon;
  final bool isReserve;
  final TextEditingController? controller;
  final Function(String value)? onChange;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.prefixIcon,
    this.isReserve = false,
    this.suffixIcon = const SizedBox(),
    this.controller,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      style: isReserve ? TextStyle(color: AppColors.black) : null,
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        filled: true,
        hintStyle: isReserve
            ? TextStyle(color: AppColors.black)
            : TextStyle(color: AppColors.mediumGray),
        fillColor: AppColors.fillClr,
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.deepOrange)
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
