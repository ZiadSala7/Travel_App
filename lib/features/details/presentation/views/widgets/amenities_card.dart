import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/hotel_service_model.dart';

class AmenitiesCard extends StatelessWidget {
  const AmenitiesCard({super.key, required this.amenity});

  final HotelServiceModel amenity;

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
