import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FlightDescriptionSection extends StatelessWidget {
  final double width;
  const FlightDescriptionSection({super.key, this.width = 50});

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    // ignore: deprecated_member_use
    final secondaryText = onSurface.withOpacity(0.7);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "14:30",
              style: AppTextStyles.text20Bold.copyWith(color: onSurface),
            ),
            Text(
              "Dubai international",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                overflow: TextOverflow.fade,
              ),
            ),
            Text(
              "Airport",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "3h 15m",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                const Icon(Icons.circle, color: AppColors.deepOrange, size: 10),
                SizedBox(
                  width: width,
                  child: const Divider(endIndent: 3, indent: 3),
                ),
                const Icon(
                  Icons.flight_outlined,
                  color: AppColors.deepOrange,
                  size: 15,
                ),
              ],
            ),
            Text(
              "EK-203",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "17:45",
              style: AppTextStyles.text20Bold.copyWith(color: onSurface),
            ),
            Text(
              "Cairo international",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                overflow: TextOverflow.fade,
              ),
            ),
            Text(
              "Airport",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
