import 'package:flutter/material.dart';

import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import 'book_hotel_view.dart';
import 'car_reservation_view.dart';
import 'book_flight_view.dart';
import 'widgets/search_view_tabs_list.dart';

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
      initialIndex: widget.initialTab, // here is the magic
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const AppLogo(),
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            indicatorColor: AppColors.deepOrange,
            labelColor: AppColors.deepOrange,
            tabs: searchViewTabsList(context),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [const CarReservationView(), const BookFlightView(), const BookHotelView()],
        ),
      ),
    );
  }
}
