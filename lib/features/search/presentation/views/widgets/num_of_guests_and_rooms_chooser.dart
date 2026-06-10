import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/travel_icons.dart';
import '../../../../../generated/l10n.dart';
import 'hotel_form_bottom_sheet.dart';

class NumOfGuestsAndRoomsChooser extends StatelessWidget {
  const NumOfGuestsAndRoomsChooser({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final fillColor = isDark ? AppColors.saferDarkPanel : AppColors.saferMuted;
    final borderColor = isDark
        ? AppColors.saferDarkText.withValues(alpha: 0.10)
        : AppColors.saferBorder;

    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const HottelFormBottomSheet(),
        );
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 12),
        constraints: const BoxConstraints(minHeight: 54),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: borderColor),
        ),
        child: Row(
          children: [
            _FieldIcon(icon: TravelIcons.travellers, color: scheme.primary),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                "1 ${S.of(context).guest}, 2 ${S.of(context).rooms}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text14med.copyWith(
                  color: scheme.onSurface.withValues(alpha: 0.72),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: scheme.primary,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}

class _FieldIcon extends StatelessWidget {
  const _FieldIcon({required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: color, size: 18),
    );
  }
}
