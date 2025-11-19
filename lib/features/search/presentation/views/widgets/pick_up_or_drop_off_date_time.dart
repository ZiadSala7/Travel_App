import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_form_builder_date_time_picker.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class PickUpOrDropOffDateTime extends StatelessWidget {
  final String fstTitle, scdTitle;
  const PickUpOrDropOffDateTime({
    super.key,
    required this.fstTitle,
    required this.scdTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fstTitle,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              CustomFormBuilderDateTimePicker(
                hint: 'mm/dd/yyyy',
                controller: TextEditingController(),
              ),
            ],
          ),
        ),

        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                scdTitle,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                title: "8:00",
                controller: TextEditingController(),
                prefixIcon: Icons.access_time,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
