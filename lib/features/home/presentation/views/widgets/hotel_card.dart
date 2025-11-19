import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/functions/custom_container_box_decoration.dart';
import '../../../../../core/widgets/custom_image_network.dart';
import '../../../../details/presentation/views/hotel_details_view.dart';
import 'custom_price_per_time.dart';
import 'favourite_button.dart';
import 'rating_row.dart';
import 'title_and_location_section.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

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
          // IMAGE + HEART BUTTON
          Stack(
            children: [
              CustomImageNetwork(path: networkImgHotel),
              // Heart icon (top right) => onPressed? add to favourites list
              const FavouriteButton(),
            ],
          ),
          const SizedBox(height: 12),
          // ⭐ RATING ROW
          ratingRow(5),
          const SizedBox(height: 6),
          // TITLE AND LOCATION SECTION
          const TitleAndLocationSection(),
          const SizedBox(height: 10),
          const Divider(thickness: 0.7),
          const SizedBox(height: 10),
          // PRICE SECTION
          CustomPricePerTime(
            price: "1,450 EGP",
            perTime: ' per night',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HotelDetailsView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
