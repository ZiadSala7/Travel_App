import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/amenities_model.dart';

class CustomAmenitiesCard extends StatelessWidget {
  const CustomAmenitiesCard({super.key, required this.amenity});

  final AmenitiesModel amenity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.appbarClr,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (amenity.icon != null)
              Icon(amenity.icon, color: AppColors.airplane),
            Flexible(
              child: Text(
                amenity.title,
                style: AppTextStyles.text16Bold.copyWith(
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Available",
              style: AppTextStyles.text14Reg.copyWith(
                fontSize: 12,
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
