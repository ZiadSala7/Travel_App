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
    final onSurface = Theme.of(context).colorScheme.onSurface;
    // ignore: deprecated_member_use
    final secondaryText = onSurface.withOpacity(0.7);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              price,
              style: AppTextStyles.text20Bold.copyWith(color: onSurface),
            ),
            Text(
              perTime,
              style: AppTextStyles.text16Reg.copyWith(
                color: secondaryText,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Flexible(
          child: ShowDetailsButton(
            onPressed: onPressed,
            txt: S.of(context).showDetails,
            icon: Icons.arrow_forward,
          ),
        ),
      ],
    );
  }
}
