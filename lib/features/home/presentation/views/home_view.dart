import 'package:flutter/material.dart';

import '../../../splash/presentation/views/widgets/app_logo.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String id = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: AppLogo()),
      body: HomeViewBody(),
    );
  }
}
