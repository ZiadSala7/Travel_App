import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class DepartureAndArrivalGatesLocation extends StatelessWidget {
  const DepartureAndArrivalGatesLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _GateCard(
            title: S.of(context).departureGateTitle,
            value: "Terminal 3, Gate A22",
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _GateCard(
            title: S.of(context).arrivalGateTitle,
            value: "Terminal 2, Gate B15",
          ),
        ),
      ],
    );
  }
}

class _GateCard extends StatelessWidget {
  const _GateCard({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.50),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: AppColors.deepOrange,
              size: 20,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: AppTextStyles.text14Bold.copyWith(color: scheme.onSurface),
            ),
            const SizedBox(height: 3),
            Text(
              value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.text14Reg.copyWith(
                color: scheme.onSurface.withValues(alpha: 0.64),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
