import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import 'car_reservation_view.dart';

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
          children: [
            CarReservationView(),
            Text("Flights here"),
            Text('Hotels here'),
          ],
        ),
      ),
    );
  }
}
