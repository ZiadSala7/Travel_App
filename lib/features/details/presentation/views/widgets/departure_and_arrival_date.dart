import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class DepartureAndArrivalDate extends StatelessWidget {
  const DepartureAndArrivalDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.date_range_sharp, color: AppColors.deepOrange),
            Text(
              " ${S.of(context).departure}",
              style: AppTextStyles.text14Bold,
            ),
            Text(
              " Dec 25, 2025",
              style: AppTextStyles.text14med.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.date_range_sharp, color: AppColors.deepOrange),
            Text(" ${S.of(context).arrival}", style: AppTextStyles.text14Bold),
            Text(
              " Dec 25, 2025",
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
