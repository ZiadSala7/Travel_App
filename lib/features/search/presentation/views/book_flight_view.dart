import 'package:flutter/material.dart';

import 'widgets/booking_tabs.dart';
import 'widgets/flight_form_card.dart';

class BookFlightView extends StatefulWidget {
  const BookFlightView({super.key});

  @override
  State<BookFlightView> createState() => _BookFlightViewState();
}

class _BookFlightViewState extends State<BookFlightView> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BookingTabs(
              selectedIndex: selectedTab,
              onChanged: (i) => setState(() => selectedTab = i),
            ),
            const SizedBox(height: 16),
            FlightFormCard(selectedTab: selectedTab),
          ],
        ),
      ),
    );
  }
}
