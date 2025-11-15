import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_image_network.dart';
import 'favourite_button.dart';
import 'rating_row.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: customBoxShadowList,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE + HEART BUTTON
            Stack(
              children: [
                CustomImageNetwork(
                  path:
                      "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg",
                ),
                // Heart icon (top right)
                FavouriteButton(),
              ],
            ),
            const SizedBox(height: 12),
            // ⭐ RATING ROW
            ratingRow(5),
            const SizedBox(height: 6),
            // TITLE
            const Text(
              "Malon Greens",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            // LOCATION ROW
            Row(
              children: const [
                Icon(Icons.location_on, size: 18, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  "Mumbai, Maharashtra",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
