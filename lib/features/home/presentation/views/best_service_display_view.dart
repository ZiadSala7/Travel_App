import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/car_card.dart';
import 'widgets/flight_card.dart';
import 'widgets/hotel_card.dart';

class BestServiceDisplayView extends StatelessWidget {
  final String title;
  final List list;
  final int servId;
  static const String id = 'bestServDisplay';
  const BestServiceDisplayView({
    super.key,
    required this.title,
    required this.list,
    required this.servId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 10,
            toolbarHeight: 50,
            title: Text(title, style: AppTextStyles.text22Bold),
            centerTitle: true,
          ),
          SliverAppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
            ],
            automaticallyImplyLeading: false,
            pinned: true,
            snap: false,
            floating: false,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomTextFormField(
                title: "Search for hotels :",
                controller: TextEditingController(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  10,
                  (index) => servId == 1
                      ? const HotelCard()
                      : servId == 2
                      ? const FlightCard()
                      : const CarCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
