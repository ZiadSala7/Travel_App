import 'package:flutter/material.dart';

import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../../../details/presentation/views/car_details_view.dart';
import 'car_passengers_and_doors.dart';
import 'custom_price_per_time.dart';
import 'title_and_location_section.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.all(5),
      width: 280,
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
                  AppAssets.assetsImagesOnlineCar,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: _CardBadge(
                  icon: Icons.local_gas_station_rounded,
                  label: S.of(context).auto,
                  color: AppColors.carClr,
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: _CardBadge(
                  icon: Icons.security_rounded,
                  label: S.of(context).insured,
                  color: scheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TitleAndLocationSection(
            title: "Toyota Corolla",
            location: S.of(context).pickupLocationParis,
          ),
          const SizedBox(height: 12),
          const CarPassengersAndDoors(),
          const SizedBox(height: 10),
          Divider(
            height: 1,
            thickness: 0.7,
            color: scheme.outline.withValues(alpha: 0.20),
          ),
          const SizedBox(height: 10),
          CustomPricePerTime(
            price: '500 EGP',
            perTime: S.of(context).perDay,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CarDetailsView()),
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
