import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class CarPassengersAndDoors extends StatelessWidget {
  const CarPassengersAndDoors({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        _CarSpecChip(
          icon: Icons.person_2_outlined,
          label: S.of(context).fourSeats,
          color: AppColors.airplane,
          surfaceColor: scheme.surfaceContainerHighest.withValues(alpha: 0.46),
          textColor: scheme.onSurface,
        ),
        const SizedBox(width: 8),
        _CarSpecChip(
          icon: Icons.wallet_travel_rounded,
          label: S.of(context).fourBags,
          color: AppColors.airplane,
          surfaceColor: scheme.surfaceContainerHighest.withValues(alpha: 0.46),
          textColor: scheme.onSurface,
        ),
      ],
    );
  }
}

class _CarSpecChip extends StatelessWidget {
  const _CarSpecChip({
    required this.icon,
    required this.label,
    required this.color,
    required this.surfaceColor,
    required this.textColor,
  });

  final IconData icon;
  final String label;
  final Color color;
  final Color surfaceColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 17),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.text14med.copyWith(
                    color: textColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
