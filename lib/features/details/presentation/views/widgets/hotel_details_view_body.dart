import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../data/amenities_model.dart';
import 'hotel_details_section.dart';
import 'image_details_section.dart';

class HotelDetailsViewBody extends StatelessWidget {
  const HotelDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<AmenitiesModel> amenitiesAndServices = hotelAmenities(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageDetailsSection(image: networkImgHotel),
          const SizedBox(height: 15),
          HotelDetailsSection(amenitiesAndServices: amenitiesAndServices),
        ],
      ),
    );
  }
}
