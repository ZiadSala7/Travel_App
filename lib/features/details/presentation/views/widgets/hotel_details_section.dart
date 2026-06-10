import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/widgets/rating_row.dart';
import '../../../../home/presentation/views/widgets/title_and_location_section.dart';
import '../../../data/amenities_model.dart';
import 'custom_amenities_card.dart';
import 'drop_down_list_tile.dart';

class HotelDetailsSection extends StatelessWidget {
  const HotelDetailsSection({super.key, required this.amenitiesAndServices});

  final List<AmenitiesModel> amenitiesAndServices;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: scheme.outline.withValues(alpha: 0.14)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleAndLocationSection(isDetail: true),
                  SizedBox(height: 12),
                  _RatingWrap(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),
          DropDownListTile(
            widget: Text(
              overView,
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
              itemCount: amenitiesAndServices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.82,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) =>
                  CustomAmenitiesCard(amenity: amenitiesAndServices[index]),
            ),
            title: S.of(context).amenities,
          ),
        ],
      ),
    );
  }
}

class _RatingWrap extends StatelessWidget {
  const _RatingWrap();

  @override
  Widget build(BuildContext context) => ratingRow(5);
}
