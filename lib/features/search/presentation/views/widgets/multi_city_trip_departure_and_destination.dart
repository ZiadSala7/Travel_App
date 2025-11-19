import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class MultiCityTripDepartureAndDestination extends StatelessWidget {
  const MultiCityTripDepartureAndDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).departure,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                title: S.of(context).from,
                prefixIcon: Icons.flight_takeoff,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).destination,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                title: S.of(context).to,
                prefixIcon: Icons.flight_takeoff,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
