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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 18, 12, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.35)
                      : const Color(0x120F172A),
                  blurRadius: isDark ? 8 : 14,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).bestOffers,
                  style: AppTextStyles.text22Bold.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  S.of(context).travel,
                  style: AppTextStyles.text14Reg.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.72),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          CustomCarouselSlider(
            items: [
              Image.asset(AppAssets.assetsImagesOffer),
              Image.asset(AppAssets.assetsImagesCaroffer),
              Image.asset(AppAssets.assetsImagesOffer),
            ],
            height: MediaQuery.sizeOf(context).height / 3.2,
          ),
          const SizedBox(height: 30),
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
          const SizedBox(height: 14),
          const BestHotelsList(list: []),
          const SizedBox(height: 30),
          TitleAndSeeAllButton(
            title: S.of(context).bestcars,
            seeAllOnPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BestServiceDisplayView(
                    title: 'All Cars',
                    list: [],
                    servId: 3,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 14),
          const BestCarsList(list: []),
          const SizedBox(height: 30),
          TitleAndSeeAllButton(
            title: S.of(context).bestFlights,
            seeAllOnPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BestServiceDisplayView(
                    title: 'All Flights',
                    list: [],
                    servId: 2,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 14),
          const BestFlightsList(list: []),
        ],
      ),
    );
  }
}
