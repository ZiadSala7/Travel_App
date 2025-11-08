import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/app_text_styles.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/presentation/views/auth_welcome_view.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(AuthWelcomeView.id);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        S.of(context).skip,
        style: AppTextStyles.text16med.copyWith(color: AppColors.white),
      ),
    );
  }
}
