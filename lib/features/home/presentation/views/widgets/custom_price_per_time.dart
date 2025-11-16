import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'show_details_button.dart';

class CustomPricePerTime extends StatelessWidget {
  const CustomPricePerTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "1,450 EGP",
              style: AppTextStyles.text20Bold.copyWith(color: AppColors.black),
            ),
            Text(
              " per night",
              style: AppTextStyles.text16Reg.copyWith(
                color: AppColors.mediumGray,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Flexible(
          child: ShowDetailsButton(
            onPressed: () {},
            txt: S.of(context).showDetails,
            icon: Icons.arrow_forward,
          ),
        ),
      ],
    );
  }
}
