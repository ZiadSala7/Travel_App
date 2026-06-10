import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'show_details_button.dart';

class CustomPricePerTime extends StatelessWidget {
  final String price, perTime;
  final Function() onPressed;
  const CustomPricePerTime({
    super.key,
    required this.price,
    required this.perTime,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final secondaryText = scheme.onSurface.withValues(alpha: 0.64);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text20Bold.copyWith(
                  color: scheme.onSurface,
                  fontSize: 19,
                ),
              ),
              Text(
                perTime.trim(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text14med.copyWith(color: secondaryText),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 40,
          child: ShowDetailsButton(
            onPressed: onPressed,
            txt: S.of(context).showDetails,
            icon: Icons.arrow_forward_rounded,
          ),
        ),
      ],
    );
  }
}
