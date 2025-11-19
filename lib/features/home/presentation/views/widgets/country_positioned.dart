import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CountryPositioned extends StatelessWidget {
  const CountryPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: FittedBox(
          child: Text(
            "Emirates",
            style: AppTextStyles.text14Bold.copyWith(
              color: AppColors.black,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
