import 'package:flutter/material.dart';
import 'package:travel_app/core/widgets/custom_button.dart';
import 'package:travel_app/core/widgets/custom_text_form_field.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_form_builder_date_time_picker.dart';
import '../../../../generated/l10n.dart';
import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import 'car_reservation_view.dart';
import 'book_flight_view.dart';

class SearchView extends StatefulWidget {
  final int initialTab;
  static const String id = 'searchView';
  const SearchView({super.key, this.initialTab = 0});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.initialTab, // ✅ هنا السحر
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: AppLogo(),
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            indicatorColor: AppColors.deepOrange,
            labelColor: AppColors.deepOrange,
            tabs: [
              Tab(text: S.of(context).car, icon: Icon(Icons.car_rental)),
              Tab(
                text: S.of(context).flights,
                icon: Icon(Icons.airplanemode_active),
              ),
              Tab(
                text: S.of(context).hotel,
                icon: Icon(Icons.home_work_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [CarReservationView(), BookFlightView(), BookHotelView()],
        ),
      ),
    );
  }
}

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
            Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).arrivalDate,
                        style: AppTextStyles.text16Bold.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      CustomFormBuilderDateTimePicker(
                        hint: S.of(context).date,
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text(
                        S.of(context).departureDate,
                        style: AppTextStyles.text16Bold.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      CustomFormBuilderDateTimePicker(
                        hint: S.of(context).date,
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
