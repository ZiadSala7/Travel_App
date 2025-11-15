import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_form_builder_date_time_picker.dart';
import '../../../../../generated/l10n.dart';
import 'flight_form_card.dart';

class FlightsDateSelection extends StatelessWidget {
  const FlightsDateSelection({super.key, required this.widget});

  final FlightFormCard widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).departureDate,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              CustomFormBuilderDateTimePicker(
                hint: S.of(context).date,
                controller: TextEditingController(),
              ),
            ],
          ),
        ),
        ?widget.selectedTab != 0
            ? Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      S.of(context).returnDate,
                      style: AppTextStyles.text16Bold.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    CustomFormBuilderDateTimePicker(
                      hint: S.of(context).date,
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              )
            : null,
      ],
    );
  }
}
