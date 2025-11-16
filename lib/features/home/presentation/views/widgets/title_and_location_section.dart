import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class TitleAndLocationSection extends StatelessWidget {
  const TitleAndLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE
        Text(
          "Malon Greens",
          style: AppTextStyles.text18Bold.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 4),
        // LOCATION ROW
        Row(
          children: [
            Icon(Icons.location_on, size: 18, color: Colors.grey),
            SizedBox(width: 4),
            Text(
              "Mumbai, Maharashtra",
              style: AppTextStyles.text16Reg.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
