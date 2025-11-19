import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'hotel_card.dart';

class BestHotelsList extends StatelessWidget {
  final List list;
  const BestHotelsList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => Padding(
            padding: EdgeInsets.only(
              left: Intl.getCurrentLocale() == 'ar' ? 15 : 0,
              right: Intl.getCurrentLocale() == 'en' ? 15 : 0,
            ),
            child: const HotelCard(),
          ),
        ),
      ),
    );
  }
}
