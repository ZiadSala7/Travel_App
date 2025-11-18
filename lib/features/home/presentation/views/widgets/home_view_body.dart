import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../best_service_display_view.dart';
import 'best_cars_list.dart';
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
            SizedBox(height: 20),
            // service 👇👇
            Text(
              S.of(context).bestOffers,
              style: AppTextStyles.text22Bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // offers
            CustomCarouselSlider(
              items: [
                Image.asset(AppAssets.assetsImagesOffer),
                Image.asset(AppAssets.assetsImagesCaroffer),
                Image.asset(AppAssets.assetsImagesOffer),
              ],
              height: MediaQuery.sizeOf(context).height / 2.5,
            ),
            SizedBox(height: 30),
            // best hotels 👇👇
            TitleAndSeeAllButton(
              title: S.of(context).bestHotel,
              seeAllOnPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        BestServiceDisplayView(title: 'All Hotels'),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            BestHotelsList(list: []),
            SizedBox(height: 30),
            // best cars 👇👇
            TitleAndSeeAllButton(
              title: S.of(context).bestcars,
              seeAllOnPressed: () {},
            ),
            SizedBox(height: 15),
            BestCarsList(list: []),
          ],
        ),
      ),
    );
  }
}
