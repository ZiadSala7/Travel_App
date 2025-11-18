import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CarPassengersAndDoors extends StatelessWidget {
  const CarPassengersAndDoors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person_2_outlined, color: AppColors.airplane),
            Text(
              "4",
              style: AppTextStyles.text14Reg.copyWith(color: AppColors.black),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.wallet_travel_rounded, color: AppColors.airplane),
            Text(
              "4",
              style: AppTextStyles.text14Reg.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ],
    );
  }
}
