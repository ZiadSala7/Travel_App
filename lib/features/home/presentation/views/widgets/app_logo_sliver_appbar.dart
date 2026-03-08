import 'package:flutter/material.dart';

import 'app_logo_sliver_flexible_space.dart';

class AppLogoSliverAppBar extends StatelessWidget {
  const AppLogoSliverAppBar({super.key});

  static const double _collapsedHeight = 92;
  static const double _expandedHeight = 300;
  static const Interval _expandedFadeOutCurve = Interval(
    0.0,
    0.72,
    curve: Curves.easeOutCubic,
  );
  static const Interval _collapsedFadeInCurve = Interval(
    0.30,
    1.0,
    curve: Curves.easeOutCubic,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: theme.scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      toolbarHeight: _collapsedHeight,
      collapsedHeight: _collapsedHeight,
      expandedHeight: _expandedHeight,
      flexibleSpace: AppLogoSliverFlexibleSpace(
        collapsedHeight: _collapsedHeight,
        expandedHeight: _expandedHeight,
        expandedFadeOutCurve: _expandedFadeOutCurve,
        collapsedFadeInCurve: _collapsedFadeInCurve,
        isDark: isDark,
      ),
    );
  }
}
