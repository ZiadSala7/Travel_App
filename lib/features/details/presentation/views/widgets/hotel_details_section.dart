import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ratingRow(5),
          const SizedBox(height: 15),
          const TitleAndLocationSection(isDetail: true),
          const SizedBox(height: 10),
          const Divider(thickness: 0.7),
          DropDownListTile(
            widget: Text(
              overView,
              style: AppTextStyles.text16Reg.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
            title: S.of(context).overview,
          ),
          const Divider(thickness: 0.7),
          DropDownListTile(
            widget: GridView.builder(
              padding: EdgeInsets.zero, // ← prevents extra top padding
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: amenitiesAndServices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3.5 / 4,
              ),
              itemBuilder: (context, index) =>
                  CustomAmenitiesCard(amenity: amenitiesAndServices[index]),
            ),
            title: S.of(context).amenities,
          ),
          const Divider(thickness: 0.7),
        ],
      ),
    );
  }
}
