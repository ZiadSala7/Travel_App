import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'show_details_button.dart';

class CustomPricePerTime extends StatelessWidget {
  final String price, perTime;
  final Function() onPressed;
  const CustomPricePerTime({
    super.key,
    required this.price,
    required this.perTime, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              price,
              style: AppTextStyles.text20Bold.copyWith(color: AppColors.black),
            ),
            Text(
              perTime,
              style: AppTextStyles.text16Reg.copyWith(
                color: AppColors.mediumGray,
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
