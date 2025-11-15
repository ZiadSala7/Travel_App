import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'flights_date_selection.dart';
import 'travellers_and_class_chooser.dart';

class FlightFormCard extends StatefulWidget {
  final int selectedTab;
  const FlightFormCard({super.key, required this.selectedTab});

  @override
  State<FlightFormCard> createState() => _FlightFormCardState();
}

class _FlightFormCardState extends State<FlightFormCard> {
  final fromController = TextEditingController();
  final toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: customBoxShadowList,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ================
          Text(
            S.of(context).departure,
            style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 10),
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
          SizedBox(height: 10),
          // ====================
          TravellersAndClassChooser(),
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
      ),
    );
  }
}
