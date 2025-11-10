import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.text16Reg.copyWith(
          color: AppColors.strongOrange,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.airplane,
        ),
      ),
    );
  }
}
