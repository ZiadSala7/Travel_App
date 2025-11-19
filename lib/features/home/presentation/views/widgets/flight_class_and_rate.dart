import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FlightClassAndRate extends StatelessWidget {
  const FlightClassAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text("Boeing 777"),
            Text(
              "Economy",
              style: AppTextStyles.text14med.copyWith(
                color: AppColors.airplane,
              ),
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            const Icon(Icons.star, color: AppColors.airplane, size: 18),
            Text(
              "4.8",
              style: AppTextStyles.text14Bold.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ],
    );
  }
}
