import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/widgets/flight_description.dart';
import '../../../data/amenities_model.dart';
import 'custom_amenities_card.dart';
import 'departure_and_arrival_date.dart';
import 'departure_and_arrival_gates_location.dart';
import 'drop_down_list_tile.dart';
import 'image_details_section.dart';

class FlightDetailsViewBody extends StatelessWidget {
  const FlightDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final flightsAmenities = flightAmenities(context);
    final scheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageDetailsSection(
            assetImage: AppAssets.assetsImagesFlight,
            title: "Emirates",
            subtitle: "EK-203 . Boeing 777 . ${S.of(context).directFlight}",
            trailingBadge: _HeroBadge(
              label: "4.8",
              icon: Icons.star_rounded,
              color: scheme.primary,
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: scheme.surface,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: scheme.outline.withValues(alpha: 0.14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                color: AppColors.airplane.withValues(
                                  alpha: 0.12,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset(AppAssets.assetsImagesFlight),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Emirates",
                                    style: AppTextStyles.text18Bold.copyWith(
                                      color: scheme.onSurface,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    "EK-203 . Boeing 777",
                                    style: AppTextStyles.text14Reg.copyWith(
                                      color: scheme.onSurface.withValues(
                                        alpha: 0.62,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _Pill(label: S.of(context).economy),
                          ],
                        ),
                        const SizedBox(height: 18),
                        const FlightDescriptionSection(width: 88),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                const DepartureAndArrivalGatesLocation(),
                const SizedBox(height: 14),
                const DepartureAndArrivalDate(),
                const SizedBox(height: 14),
                DropDownListTile(
                  widget: GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: flightsAmenities.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.25,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                    itemBuilder: (context, index) =>
                        CustomAmenitiesCard(amenity: flightsAmenities[index]),
                  ),
                  title: S.of(context).amenities,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroBadge extends StatelessWidget {
  const _HeroBadge({
    required this.label,
    required this.icon,
    required this.color,
  });

  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 16),
            const SizedBox(width: 4),
            Text(
              label,
              style: AppTextStyles.text14Bold.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.airplane.withValues(alpha: 0.13),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Text(
          label,
          style: AppTextStyles.text14Bold.copyWith(
            color: scheme.onSurface,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
