import 'package:flutter/material.dart';
import 'package:travel_app/core/widgets/custom_button.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/country_and_city_form.dart';
import 'widgets/custom_drop_down_button.dart';
import 'widgets/location_form.dart';
import 'widgets/pick_up_or_drop_off_date_time.dart';

class CarReservationView extends StatelessWidget {
  const CarReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: customBoxShadowList,
      ),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Text(
            S.of(context).selectCar,
            style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
          ),
          SizedBox(height: 10),
          CustomDropDownButton(
            items: typeOfCar,
            hint: S.of(context).bookCarType,
          ),
          SizedBox(height: 30),
          Text(
            S.of(context).typeOfCar,
            style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
          ),
          SizedBox(height: 10),
          CustomDropDownButton(
            items: carServiceType,
            hint: S.of(context).selectCar,
          ),
          SizedBox(height: 30),
          CountryAndCityForm(),
          SizedBox(height: 30),
          LocationForm(),
          SizedBox(height: 30),
          PickUpOrDropOffDateTime(
            fstTitle: S.of(context).pickUpDate,
            scdTitle: S.of(context).pickUpTime,
          ),
          SizedBox(height: 30),
          PickUpOrDropOffDateTime(
            fstTitle: S.of(context).dropOffDate,
            scdTitle: S.of(context).dropOffTime,
          ),
          SizedBox(height: 30),
          Column(
            children: [
              CustomButton(
                onPressed: () {},
                txt: S.of(context).Search,
                icon: Icons.arrow_forward,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
