import 'package:flutter/material.dart';

import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../details/presentation/views/car_details_view.dart';
import 'car_passengers_and_doors.dart';
import 'custom_price_per_time.dart';
import 'title_and_location_section.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppAssets.assetsImagesOnlineCar,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // PASSENGERS AND
          const SizedBox(height: 6),
          // TITLE AND LOCATION SECTION
          TitleAndLocationSection(
            title: "Toyota Corolla",
            location: "Pickup location:\nCharles de Gaulle Airport, paris",
          ),
          const SizedBox(height: 15),
          CarPassengersAndDoors(),
          Divider(thickness: 0.7),
          const SizedBox(height: 10),
          // PRICE SECTION
          CustomPricePerTime(
            price: '500 EGP',
            perTime: ' per day',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CarDetailsView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
