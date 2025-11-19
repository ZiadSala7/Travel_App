import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ProfileImageEmailAndName extends StatelessWidget {
  const ProfileImageEmailAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.darkGray,
            ),
            child: ClipOval(
              child: Image.asset(
                AppAssets.assetsImagesProgramming,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Ziad Salah", style: AppTextStyles.text18Bold),
              Text("ziad2025@gmail.com", style: AppTextStyles.text16Reg),
            ],
          ),
        ],
      ),
    );
  }
}
