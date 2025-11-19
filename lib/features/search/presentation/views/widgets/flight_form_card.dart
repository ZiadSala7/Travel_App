import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import 'multi_city_flight.dart';
import 'one_way_round_flight.dart';

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
      child: widget.selectedTab < 2
          ? OneWayOrRoundFlight(
              fromController: fromController,
              toController: toController,
              widget: widget,
            )
          : const MulticityFlight(),
    );
  }
}
