import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_image_network.dart';
import '../../../../../generated/l10n.dart';
import '../../../../details/presentation/views/hotel_details_view.dart';
import 'custom_price_per_time.dart';
import 'rating_row.dart';
import 'title_and_location_section.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

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
              CustomImageNetwork(path: networkImgHotel),
              Positioned(
                top: 10,
                left: 10,
                child: _CardBadge(
                  icon: Icons.verified_rounded,
                  label: S.of(context).topStay,
                  color: AppColors.building,
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: _CardBadge(
                  icon: Icons.pool_rounded,
                  label: S.of(context).pool,
                  color: scheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ratingRow(5),
          const SizedBox(height: 8),
          const TitleAndLocationSection(),
          const SizedBox(height: 10),
          Divider(
            height: 1,
            thickness: 0.7,
            color: scheme.outline.withValues(alpha: 0.20),
          ),
          const SizedBox(height: 10),
          CustomPricePerTime(
            price: "1,450 EGP",
            perTime: S.of(context).perNight,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HotelDetailsView(),
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
