import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class CountryAndCityForm extends StatelessWidget {
  const CountryAndCityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                S.of(context).cntryServ,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              CustomTextFormField(
                title: "Egypt",
                controller: TextEditingController(),
                prefixIcon: Icons.place,
              ),
            ],
          ),
        ),
        Flexible(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).ctyServ,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
              ),
              CustomTextFormField(
                title: "Sohag",
                controller: TextEditingController(),
                prefixIcon: Icons.location_city,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
