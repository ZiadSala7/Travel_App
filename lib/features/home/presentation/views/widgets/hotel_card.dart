import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/widgets/custom_image_network.dart';
import 'custom_price_per_time.dart';
import 'favourite_button.dart';
import 'rating_row.dart';
import 'title_and_location_section.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(5),
        width: 300,
        padding: const EdgeInsets.all(12),
        decoration: customContainerBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE + HEART BUTTON
            Stack(
              children: [
                CustomImageNetwork(path: imageNetwork),
                // Heart icon (top right)
                FavouriteButton(),
              ],
            ),
            const SizedBox(height: 12),
            // ⭐ RATING ROW
            ratingRow(5),
            const SizedBox(height: 6),
            // TITLE AND LOCATION SECTION
            TitleAndLocationSection(),
            const SizedBox(height: 10),
            Divider(thickness: 0.7),
            const SizedBox(height: 10),
            // PRICE SECTION
            CustomPricePerTime(),
          ],
        ),
      ),
    );
  }
}
