import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
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
      style: TextStyle(
        color: context.read<ThemeCubit>().state == lightTheme
            ? AppColors.black
            : AppColors.white,
      ),
      cursorColor: AppColors.deepOrange,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon == const SizedBox() ? null : prefixIcon,
        suffixIcon: suffixIcon == const SizedBox() ? null : suffixIcon,
        hintText: title,
        filled: true,
        fillColor: AppColors.fillClr,
        hintStyle: AppTextStyles.text16Reg.copyWith(
          color: AppColors.mediumGray,
        ),
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
