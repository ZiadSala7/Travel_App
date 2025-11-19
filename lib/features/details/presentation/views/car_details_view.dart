import 'package:flutter/material.dart';

import '../../data/amenities_model.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/bottom_rounded_clipper.dart';
import 'widgets/drop_down_list_tile.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomButton(
          onPressed: () {},
          txt: S.of(context).bookNow,
          icon: Icons.arrow_forward,
        ),
      ),
      body: CarDetailsViewBody(),
    );
  }
}

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
              decoration: BoxDecoration(
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
                      icon: Icon(Icons.arrow_back),
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
                SizedBox(height: 15),
                Row(
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
                SizedBox(height: 10),
                Divider(thickness: 0.7),
                DropDownListTile(
                  widget: Text(
                    "Reliable and furel-efficient for city drivers and short trips",
                    style: AppTextStyles.text16Reg.copyWith(
                      color: AppColors.mediumGray,
                    ),
                  ),
                  title: S.of(context).overview,
                ),
                Divider(thickness: 0.7),
                DropDownListTile(
                  widget: GridView.builder(
                    padding: EdgeInsets.zero, // ← prevents extra top padding
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: amenitiesCar.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 4,
                    ),
                    itemBuilder: (context, index) =>
                        CarAmenitiesCard(amenity: amenitiesCar[index]),
                  ),
                  title: S.of(context).amenities,
                ),
                Divider(thickness: 0.7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarAmenitiesCard extends StatelessWidget {
  final AmenitiesModel amenity;
  const CarAmenitiesCard({super.key, required this.amenity});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.appbarClr,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              amenity.title,
              style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
              textAlign: TextAlign.center,
            ),
            Text(
              "Available",
              style: AppTextStyles.text14Reg.copyWith(
                fontSize: 12,
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
