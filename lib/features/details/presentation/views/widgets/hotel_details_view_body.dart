import 'package:flutter/material.dart';

import '../../../data/hotel_service_model.dart';
import 'hotel_details_section.dart';
import 'hotel_image_section.dart';

class HotelDetailsViewBody extends StatelessWidget {
  const HotelDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<HotelServiceModel> amenitiesAndServices = amenities(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HotelImageSection(),
          SizedBox(height: 15),
          HotelDetailsSection(amenitiesAndServices: amenitiesAndServices),
        ],
      ),
    );
  }
}
