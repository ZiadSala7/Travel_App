import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DepartureAndArrivalGatesLocation extends StatelessWidget {
  const DepartureAndArrivalGatesLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.location_on_outlined, color: AppColors.deepOrange),
            Text(
              " Terminal 3. Gate A22",
              style: AppTextStyles.text14med.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_on_outlined, color: AppColors.deepOrange),
            Text(
              " Terminal 2. Gate B15",
              style: AppTextStyles.text14med.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
