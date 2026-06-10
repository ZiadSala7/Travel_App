import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/amenities_model.dart';

class CustomAmenitiesCard extends StatelessWidget {
  const CustomAmenitiesCard({super.key, required this.amenity});

  final AmenitiesModel amenity;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.52),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.14)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: AppColors.airplane.withValues(alpha: 0.13),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Icon(
                amenity.icon ?? Icons.check_rounded,
                color: AppColors.airplane,
                size: 20,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                amenity.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text14Bold.copyWith(
                  color: scheme.onSurface,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              S.of(context).available,
              style: AppTextStyles.text14Reg.copyWith(
                fontSize: 11,
                color: scheme.onSurface.withValues(alpha: 0.58),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
