import 'package:flutter/material.dart';

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
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.28 : 0.10),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
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
