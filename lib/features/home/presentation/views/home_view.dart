import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../data/models/service_model.dart';
import 'widgets/app_logo_sliver_appbar.dart';
import 'widgets/choose_service_sliver_appbar.dart';
import 'widgets/home_view_body.dart';
import 'widgets/home_view_drawer.dart';

class HomeView extends StatelessWidget {
  static const String id = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServiceModel> services = serviceModels(context);
    var items = drawerItems(context);
    return Scaffold(
      drawer: HomeViewDrawer(items: items),
      body: CustomScrollView(
        slivers: [
          const AppLogoSliverAppBar(),
          const SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            floating: false,
            snap: false,
            toolbarHeight: 10,
            expandedHeight: 10,
          ),
          ChooseServiceSliverAppBar(services: services),
          const SliverToBoxAdapter(child: HomeViewBody()),
        ],
      ),
    );
  }
}
