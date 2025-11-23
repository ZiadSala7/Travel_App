import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../best_service_display_view.dart';
import 'best_cars_list.dart';
import 'best_flights_list.dart';
import 'best_hotels_list.dart';
import 'custom_carousel_slider.dart';
import 'title_and_see_all_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Offers 👇👇
            Text(
              S.of(context).bestOffers,
              style: AppTextStyles.text22Bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            CustomCarouselSlider(
              items: [
                Image.asset(AppAssets.assetsImagesOffer),
                Image.asset(AppAssets.assetsImagesCaroffer),
                Image.asset(AppAssets.assetsImagesOffer),
              ],
              height: MediaQuery.sizeOf(context).height / 2.5,
            ),
            const SizedBox(height: 30),
            // best hotels 👇👇
            TitleAndSeeAllButton(
              title: S.of(context).bestHotel,
              seeAllOnPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BestServiceDisplayView(
                      title: 'All Hotels',
                      list: [],
                      servId: 1,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            const BestHotelsList(list: []),
            const SizedBox(height: 30),
            // best cars 👇👇
            TitleAndSeeAllButton(
              title: S.of(context).bestcars,
              seeAllOnPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BestServiceDisplayView(
                      title: 'All Hotels',
                      list: [],
                      servId: 3,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            const BestCarsList(list: []),
            const SizedBox(height: 30),
            // best flights 👇👇
            TitleAndSeeAllButton(
              title: S.of(context).bestFlights,
              seeAllOnPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BestServiceDisplayView(
                      title: 'All Hotels',
                      list: [],
                      servId: 2,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            const BestFlightsList(list: []),
          ],
        ),
      ),
    );
  }
}
