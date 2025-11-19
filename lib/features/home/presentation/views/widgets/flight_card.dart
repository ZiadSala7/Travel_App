import 'package:flutter/material.dart';

import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../details/presentation/views/flight_details_view.dart';
import 'country_positioned.dart';
import 'custom_price_per_time.dart';
import 'flight_class_and_rate.dart';
import 'flight_description.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 350,
      padding: const EdgeInsets.all(12),
      decoration: customContainerBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE + location
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppAssets.assetsImagesFlight,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const CountryPositioned(),
            ],
          ),
          const SizedBox(height: 12),
          // DESCRIPTION SECTION
          const FlightDescriptionSection(),
          const SizedBox(height: 15),
          const Divider(thickness: 0.7),
          const SizedBox(height: 10),
          // CLASS AND RATE
          const FlightClassAndRate(),
          const SizedBox(height: 15),
          // PRICE SECTION
          CustomPricePerTime(
            price: '500 EGP',
            perTime: ' per person',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FlightDetailsView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
