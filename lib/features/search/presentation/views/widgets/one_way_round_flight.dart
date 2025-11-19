import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'flight_form_card.dart';
import 'flights_date_selection.dart';
import 'travellers_and_class_chooser.dart';

class OneWayOrRoundFlight extends StatelessWidget {
  const OneWayOrRoundFlight({
    super.key,
    required this.fromController,
    required this.toController,
    required this.widget,
  });

  final TextEditingController fromController;
  final TextEditingController toController;
  final FlightFormCard widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ================
        Text(
          S.of(context).departure,
          style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          title: S.of(context).from,
          prefixIcon: Icons.flight_takeoff,
          controller: fromController,
        ),
        const SizedBox(height: 12),
        // ==============
        Text(
          S.of(context).destination,
          style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          title: S.of(context).to,
          prefixIcon: Icons.flight_land,
          controller: toController,
        ),
        const SizedBox(height: 12),
        // ====================
        FlightsDateSelection(widget: widget),
        const SizedBox(height: 12),
        // ====================
        Text(
          S.of(context).travellersAndClass,
          style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 10),
        // ====================
        const TravellersAndClassChooser(),
        const SizedBox(height: 20),
        // ====================
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            txt: S.of(context).Search,
            icon: Icons.arrow_forward,
          ),
        ),
      ],
    );
  }
}
