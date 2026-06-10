import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/amenities_model.dart';
import 'custom_amenities_card.dart';
import 'drop_down_list_tile.dart';
import 'image_details_section.dart';

class CarDetailsViewBody extends StatelessWidget {
  const CarDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final amenitiesCar = carAmenities(context);
    final scheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageDetailsSection(
            assetImage: AppAssets.assetsImagesOnlineCar,
            title: "Toyota Corolla",
            subtitle: S.of(context).carHeroSubtitle,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toyota Corolla",
                          style: AppTextStyles.text22Bold.copyWith(
                            color: scheme.onSurface,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          S.of(context).pickupLocationParis,
                          style: AppTextStyles.text14Reg.copyWith(
                            color: scheme.onSurface.withValues(alpha: 0.64),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            _SpecChip(
                              icon: Icons.person_2_outlined,
                              label: S.of(context).seatsCount,
                              color: AppColors.airplane,
                            ),
                            const SizedBox(width: 8),
                            _SpecChip(
                              icon: Icons.wallet_travel_rounded,
                              label: S.of(context).bagsCount,
                              color: AppColors.airplane,
                            ),
                            const SizedBox(width: 8),
                            const _SpecChip(
                              icon: Icons.location_on_outlined,
                              label: "Paris",
                              color: AppColors.airplane,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                DropDownListTile(
                  widget: Text(
                    S.of(context).carOverviewText,
                    style: AppTextStyles.text16Reg.copyWith(
                      color: scheme.onSurface.withValues(alpha: 0.70),
                      height: 1.45,
                    ),
                  ),
                  title: S.of(context).overview,
                ),
                const SizedBox(height: 14),
                DropDownListTile(
                  widget: GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: amenitiesCar.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.18,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                    itemBuilder: (context, index) =>
                        CustomAmenitiesCard(amenity: amenitiesCar[index]),
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

class _SpecChip extends StatelessWidget {
  const _SpecChip({
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

    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest.withValues(alpha: 0.50),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          child: Column(
            children: [
              Icon(icon, color: color, size: 19),
              const SizedBox(height: 5),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text14med.copyWith(
                  color: scheme.onSurface,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
