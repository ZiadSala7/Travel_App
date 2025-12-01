import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, i) {
          final c = categories[i];
          return Container(
            width: 200,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: c["color"] as Color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(c["icon"] as IconData, size: 28),
                const SizedBox(height: 12),
                Text(
                  S.of(context).qAbout,
                  style: AppTextStyles.text14med.copyWith(
                    color: AppColors.mediumGray,
                  ),
                ),
                Text(c["subtitle"] as String, style: AppTextStyles.text16Bold),
              ],
            ),
          );
        },
      ),
    );
  }
}
