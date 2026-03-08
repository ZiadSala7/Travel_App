import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../best_service_display_view.dart';
import 'best_cars_list.dart';
import 'best_flights_list.dart';
import 'best_hotels_list.dart';
import 'title_and_see_all_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 18, 12, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
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
