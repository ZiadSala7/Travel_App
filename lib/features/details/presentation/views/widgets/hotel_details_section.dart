import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/widgets/rating_row.dart';
import '../../../../home/presentation/views/widgets/title_and_location_section.dart';
import '../../../data/amenities_model.dart';
import 'hotel_amenities_card.dart';
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
          SizedBox(height: 15),
          TitleAndLocationSection(isDetail: true),
          SizedBox(height: 10),
          Divider(thickness: 0.7),
          DropDownListTile(
            widget: Text(
              overView,
              style: AppTextStyles.text16Reg.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
            title: S.of(context).overview,
          ),
          Divider(thickness: 0.7),
          DropDownListTile(
            widget: GridView.builder(
              padding: EdgeInsets.zero, // ← prevents extra top padding
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: amenitiesAndServices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3.5 / 4,
              ),
              itemBuilder: (context, index) =>
                  HotelAmenitiesCard(amenity: amenitiesAndServices[index]),
            ),
            title: S.of(context).amenities,
          ),
          Divider(thickness: 0.7),
        ],
      ),
    );
  }
}
