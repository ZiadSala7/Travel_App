import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../home/presentation/views/widgets/show_details_button.dart';
import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import 'multi_city_trip.dart';
import 'travellers_and_class_chooser.dart';

class MulticityFlight extends StatefulWidget {
  const MulticityFlight({super.key});

  @override
  State<MulticityFlight> createState() => _MulticityFlightState();
}

class _MulticityFlightState extends State<MulticityFlight> {
  List<TripItem> trips = [];
  int _nextId = 0; // لتوليد IDs فريدة

  @override
  void initState() {
    super.initState();
    // أضف أول trip
    _addTrip();
  }

  void _removeTrip(int id) {
    if (trips.length > 1) {
      setState(() {
        trips.removeWhere((trip) => trip.id == id);
      });
    }
  }

  void _addTrip() {
    setState(() {
      trips.add(TripItem(id: _nextId++));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          spacing: 15,
          children: trips.map((trip) {
            return MultiCityTrip(
              /// unique id ✅
              key: ValueKey(trip.id),
              onPressed: () => _removeTrip(trip.id),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),

        /// ==========AddTrip button===========
        Center(
          child: ShowDetailsButton(
            onPressed: _addTrip,
            txt: S.of(context).addTrip,
            icon: Icons.add,
          ),
        ),
        const SizedBox(height: 20),

        /// ========BottomSheet Chooser========
        const TravellersAndClassChooser(),
        const SizedBox(height: 20),

        /// ========Search Button============
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            txt: S.of(context).Search,
            icon: Icons.arrow_forward,
          ),
        ),
      ],
    );
  }
}

// ✅ Class بسيط لحفظ ID كل trip
class TripItem {
  final int id;
  TripItem({required this.id});
}
