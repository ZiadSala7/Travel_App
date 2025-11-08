import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Travel",
          style: AppTextStyles.text30Bold.copyWith(color: AppColors.deepBlue),
        ),
        Text(
          "App",
          style: AppTextStyles.text30Bold.copyWith(color: AppColors.deepOrange),
        ),
      ],
    );
  }
}
