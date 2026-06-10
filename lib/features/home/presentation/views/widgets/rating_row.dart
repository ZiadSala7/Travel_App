import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

Widget ratingRow(int? rating) {
  final starCount = rating ?? 4;
  return Builder(
    builder: (context) {
      final scheme = Theme.of(context).colorScheme;
      final secondaryText = scheme.onSurface.withValues(alpha: 0.58);

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
              starCount,
              (index) => const Icon(
                Icons.star_rounded,
                color: AppColors.airplane,
                size: 17,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "5.0",
                style: AppTextStyles.text14Bold.copyWith(
                  color: scheme.onSurface,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "(120)",
                style: AppTextStyles.text14Reg.copyWith(
                  color: secondaryText,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
