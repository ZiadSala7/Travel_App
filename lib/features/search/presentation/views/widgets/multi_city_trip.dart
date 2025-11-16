import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_form_builder_date_time_picker.dart';
import '../../../../../generated/l10n.dart';
import 'multi_city_trip_departure_and_destination.dart';

class MultiCityTrip extends StatelessWidget {
  final Function() onPressed;
  const MultiCityTrip({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MultiCityTripDepartureAndDestination(),
        SizedBox(height: 20),
        Text(
          S.of(context).departureDate,
          style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
        ),
        SizedBox(height: 10),
        CustomFormBuilderDateTimePicker(
          hint: S.of(context).date,
          controller: TextEditingController(),
        ),
        SizedBox(height: 15),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.black,
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.clear, color: AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}
