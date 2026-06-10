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
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final secondaryText = scheme.onSurface.withValues(alpha: 0.64);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Malon Greens",
          style: AppTextStyles.text20Bold.copyWith(
            color: isDetail != true ? scheme.onSurface : null,
            fontSize: isDetail == true ? null : 18,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: AppColors.airplane,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                location ?? "Mumbai, Maharashtra",
                style: AppTextStyles.text14Reg.copyWith(
                  color: secondaryText,
                  height: 1.25,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
