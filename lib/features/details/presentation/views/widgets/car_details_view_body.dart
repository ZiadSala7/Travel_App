import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/amenities_model.dart';
import 'bottom_rounded_clipper.dart';
import 'custom_amenities_card.dart';
import 'drop_down_list_tile.dart';

class CarDetailsViewBody extends StatelessWidget {
  const CarDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<AmenitiesModel> amenitiesCar = carAmenities(context);
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          // ImageDetailsSection(image: ""),
          ClipPath(
            clipper: BottomRoundedClipper(),
            child: Container(
              height: MediaQuery.sizeOf(context).height / 2.5,
              decoration:const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.assetsImagesOnlineCar),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Toyota Corolla",
                  style: AppTextStyles.text20Bold.copyWith(),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: AppColors.airplane,
                        ),
                        Text("5 Seats"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.wallet_travel_rounded,
                          color: AppColors.airplane,
                        ),
                        Text("5 Doors"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.airplane,
                        ),
                        Text("Paris"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 0.7),
                DropDownListTile(
                  widget: Text(
                    "Reliable and furel-efficient for city drivers and short trips",
                    style: AppTextStyles.text16Reg.copyWith(
                      color: AppColors.mediumGray,
                    ),
                  ),
                  title: S.of(context).overview,
                ),
                const Divider(thickness: 0.7),
                DropDownListTile(
                  widget: GridView.builder(
                    padding: EdgeInsets.zero, // ← prevents extra top padding
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: amenitiesCar.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 4,
                    ),
                    itemBuilder: (context, index) =>
                        CustomAmenitiesCard(amenity: amenitiesCar[index]),
                  ),
                  title: S.of(context).amenities,
                ),
                const Divider(thickness: 0.7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
