import 'package:flutter/material.dart';

import '../../../../splash/presentation/views/widgets/app_logo.dart';

class AppLogoSliverAppBar extends StatelessWidget {
  const AppLogoSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      toolbarHeight: 50,
      expandedHeight: 50,
      flexibleSpace: FlexibleSpaceBar(title: AppLogo(), centerTitle: true),
    );
  }
}
