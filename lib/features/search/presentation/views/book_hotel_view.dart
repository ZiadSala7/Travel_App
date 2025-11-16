import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../generated/l10n.dart';
import 'widgets/book_hotel_date_selector.dart';

class BookHotelView extends StatelessWidget {
  const BookHotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 420,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: customBoxShadowList,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              S.of(context).destination,
              style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              title: S.of(context).destination,
              controller: TextEditingController(),
            ),
            SizedBox(height: 20),
            BookHotelDateSelector(),
            SizedBox(height: 20),
            Text(
              S.of(context).guestsAndRooms,
              style: AppTextStyles.text16Bold.copyWith(color: AppColors.black),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.fillClr,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: AppColors.greyShade),
              ),
              child: Text(
                "1 Guests, 2 Rooms",
                style: AppTextStyles.text16med.copyWith(
                  color: AppColors.mediumGray,
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {},
              txt: S.of(context).Search,
              icon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}
