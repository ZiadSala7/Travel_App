import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/favourite_hotel_card.dart';

class FavouritesView extends StatelessWidget {
  static const String id = 'favouritesView';
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).favourites, style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: List.generate(
            4,
            (index) =>const Padding(
              padding:  EdgeInsets.only(bottom: 15),
              child: FavouriteHotelCard(),
            ),
          ),
        ),
      ),
    );
  }
}
