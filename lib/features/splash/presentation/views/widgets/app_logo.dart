import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).travel,
          style: AppTextStyles.text30Bold.copyWith(
            color: context.read<ThemeCubit>().state == lightTheme
                ? AppColors.deepBlue
                : AppColors.white,
          ),
        ),
        Text(
          S.of(context).app,
          style: AppTextStyles.text30Bold.copyWith(color: AppColors.deepOrange),
        ),
      ],
    );
  }
}
