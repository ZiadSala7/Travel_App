import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class FlightClassAndRate extends StatelessWidget {
  const FlightClassAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final secondaryText = scheme.onSurface.withValues(alpha: 0.62);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _InfoChip(
              icon: Icons.airplanemode_active_rounded,
              label: "Boeing 777",
              color: secondaryText,
            ),
            const SizedBox(width: 8),
            _InfoChip(
              icon: Icons.event_seat_rounded,
              label: S.of(context).economy,
              color: AppColors.airplane,
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            const Icon(Icons.star_rounded, color: AppColors.airplane, size: 18),
            Text(
              "4.8",
              style: AppTextStyles.text14Bold.copyWith(color: scheme.onSurface),
            ),
          ],
        ),
      ],
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 16),
        const SizedBox(width: 4),
        Text(
          label,
          style: AppTextStyles.text14med.copyWith(color: color, fontSize: 12),
        ),
      ],
    );
  }
}
