import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class TitleAndLocationSection extends StatelessWidget {
  final String? title, location;
  final bool? isDetail;
  const TitleAndLocationSection({
    super.key,
    this.title,
    this.location,
    this.isDetail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE
        Text(
          title ?? "Malon Greens",
          style: AppTextStyles.text20Bold.copyWith(
            color: isDetail != true ? AppColors.black : null,
          ),
        ),
        const SizedBox(height: 4),
        // LOCATION ROW
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 22,
              color: AppColors.airplane,
            ),
            SizedBox(width: 4),
            Text(
              location ?? "Mumbai, Maharashtra",
              style: AppTextStyles.text14Reg.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
