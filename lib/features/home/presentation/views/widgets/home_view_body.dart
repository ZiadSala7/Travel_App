import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/managers/language_cubit/language_cubit.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'custom_carousel_slider.dart';
import 'hotel_card.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).bestHotel, style: AppTextStyles.text22Bold),
                CustomTextButton(
                  title: S.of(context).seeAll,
                  onPressed: () {
                    context.read<LanguageCubit>().changeLanguage();
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      left: Intl.getCurrentLocale() == 'ar' ? 15 : 0,
                      right: Intl.getCurrentLocale() == 'en' ? 15 : 0,
                    ),
                    child: HotelCard(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // special offers 👇👇
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).offers, style: AppTextStyles.text22Bold),
                CustomTextButton(title: S.of(context).seeAll, onPressed: () {}),
              ],
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      left: Intl.getCurrentLocale() == 'ar' ? 15 : 0,
                      right: Intl.getCurrentLocale() == 'en' ? 15 : 0,
                    ),
                    child: HotelCard(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
