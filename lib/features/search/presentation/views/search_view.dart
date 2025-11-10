import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import 'car_reservation_view.dart';

class SearchView extends StatelessWidget {
  final int index;
  static const String id = 'searchView';
  const SearchView({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: AppLogo(),
          centerTitle: true,
          bottom: TabBar(
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
          children: [
            CarReservationView(),
            CarReservationView(),
            CarReservationView(),
          ],
        ),
      ),
    );
  }
}
