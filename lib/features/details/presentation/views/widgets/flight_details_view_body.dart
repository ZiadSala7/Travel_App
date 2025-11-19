import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/widgets/flight_description.dart';
import '../../../data/amenities_model.dart';
import 'custom_amenities_card.dart';
import 'departure_and_arrival_date.dart';
import 'departure_and_arrival_gates_location.dart';
import 'drop_down_list_tile.dart';

class FlightDetailsViewBody extends StatelessWidget {
  const FlightDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<AmenitiesModel> flightsAmenities = flightAmenities(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
            ),
            const SizedBox(height: 20),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(AppAssets.assetsImagesFlight),
              title: const Text("Emirates", style: AppTextStyles.text16Bold),
              subtitle: const Text(
                "EK-203 . Boeing777",
                style: AppTextStyles.text14Reg,
              ),
            ),
            const SizedBox(height: 25),
            const FlightDescriptionSection(width: 90),
            const SizedBox(height: 20),
            const DepartureAndArrivalGatesLocation(),
            const SizedBox(height: 20),
            const Divider(thickness: 0.7),
            const SizedBox(height: 20),
            const DepartureAndArrivalDate(),
            const SizedBox(height: 20),
            const Divider(thickness: 0.7),
            const SizedBox(height: 20),
            DropDownListTile(
              widget: GridView.builder(
                padding: EdgeInsets.zero, // ← prevents extra top padding
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: flightsAmenities.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 6 / 4,
                ),
                itemBuilder: (context, index) =>
                    CustomAmenitiesCard(amenity: flightsAmenities[index]),
              ),
              title: S.of(context).amenities,
            ),
          ],
        ),
      ),
    );
  }
}
