import 'package:flutter/material.dart';

import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../../../details/presentation/views/flight_details_view.dart';
import 'country_positioned.dart';
import 'custom_price_per_time.dart';
import 'flight_class_and_rate.dart';
import 'flight_description.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.all(5),
      width: 350,
      padding: const EdgeInsets.all(12),
      decoration: customContainerBoxDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  AppAssets.assetsImagesFlight,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.04),
                        Colors.black.withValues(alpha: 0.36),
                      ],
                    ),
                  ),
                ),
              ),
              const CountryPositioned(),
              Positioned(
                left: 10,
                bottom: 10,
                child: _CardBadge(
                  icon: Icons.flight_takeoff_rounded,
                  label: S.of(context).directFlight,
                  color: AppColors.airplane,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const FlightDescriptionSection(width: 64),
          const SizedBox(height: 12),
          Divider(
            height: 1,
            thickness: 0.7,
            color: scheme.outline.withValues(alpha: 0.20),
          ),
          const SizedBox(height: 10),
          const FlightClassAndRate(),
          const SizedBox(height: 12),
          CustomPricePerTime(
            price: '500 EGP',
            perTime: S.of(context).perPerson,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FlightDetailsView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CardBadge extends StatelessWidget {
  const _CardBadge({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surface.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 14),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                color: scheme.onSurface,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
