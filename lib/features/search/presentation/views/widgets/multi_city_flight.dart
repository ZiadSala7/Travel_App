import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../generated/l10n.dart';
import 'multi_city_trip.dart';
import 'travellers_and_class_chooser.dart';

class MulticityFlight extends StatefulWidget {
  const MulticityFlight({super.key});

  @override
  State<MulticityFlight> createState() => _MulticityFlightState();
}

class _MulticityFlightState extends State<MulticityFlight> {
  int cnt = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          spacing: 15,
          children: List.generate(
            cnt,
            (index) => MultiCityTrip(
              onPressed: () {
                setState(() {
                  if (cnt > 1) {
                    cnt--;
                  }
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: CustomTextButton(
            onPressed: () {
              setState(() {
                cnt++;
              });
            },
            title: "Add trip",
          ),
        ),
        SizedBox(height: 20),
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
    );
  }
}
