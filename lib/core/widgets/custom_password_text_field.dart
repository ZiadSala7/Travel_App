import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/themes/light_theme.dart';

import '../managers/theme_cubit/theme_cubit.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;
  final Widget prefixIcon;
  final TextEditingController controller;
  const CustomPasswordTextFormField({
    super.key,
    required this.title,
    this.prefixIcon = const SizedBox(),
    required this.controller,
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
      style: TextStyle(
        color: context.read<ThemeCubit>().state == lightTheme
            ? AppColors.black
            : AppColors.white,
      ),
      cursorColor: AppColors.deepOrange,
      controller: widget.controller,
      obscureText: isClicked,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon == const SizedBox()
            ? null
            : widget.prefixIcon,
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
        fillColor: AppColors.fillClr,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
