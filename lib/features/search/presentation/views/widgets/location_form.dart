import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class LocationForm extends StatelessWidget {
  const LocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(S.of(context).pickUpLoc, style: AppTextStyles.text16Bold),
              CustomTextFormField(
                title: S.of(context).city,
                controller: TextEditingController(),
                prefixIcon: Icon(Icons.place),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.import_export_sharp,
                color: AppColors.white,
                size: 20,
              ),
            ),
          ),
        ),
        Flexible(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).dropOffLoc, style: AppTextStyles.text16Bold),
              CustomTextFormField(
                title: S.of(context).country,
                controller: TextEditingController(),
                prefixIcon: Icon(Icons.location_city),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
