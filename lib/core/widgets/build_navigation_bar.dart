import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../constants/constants.dart';

class BuildNavigationBar extends StatefulWidget {
  static const String id = 'buildNavigationBar';
  const BuildNavigationBar({super.key});

  @override
  State<BuildNavigationBar> createState() => _BuildNavigationBarState();
}

class _BuildNavigationBarState extends State<BuildNavigationBar> {
  final NotchBottomBarController _notchController = NotchBottomBarController(
    index: 0,
  );

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labels = [
      S.of(context).home,
      S.of(context).rehlaty,
      S.of(context).promocode,
      S.of(context).profile,
    ];

    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final navBackground = scheme.surface;
    final selectedItemColor = scheme.primary;
    final activeIconColor = scheme.onPrimary;
    // ignore: deprecated_member_use
    final inactiveIconColor = scheme.onSurface.withOpacity(0.68);

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _notchController,
        color: navBackground,
        notchColor: selectedItemColor,
        showShadow: false,
        showLabel: true,
        removeMargins: true,
        durationInMilliSeconds: 220,
        kBottomRadius: 16,
        kIconSize: 24,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Icon(Icons.home_rounded, color: inactiveIconColor),
            activeItem: Icon(Icons.home_rounded, color: activeIconColor),
            itemLabel: labels[0],
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.card_travel_rounded,
              color: inactiveIconColor,
            ),
            activeItem: Icon(Icons.card_travel_rounded, color: activeIconColor),
            itemLabel: labels[1],
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.local_offer_outlined,
              color: inactiveIconColor,
            ),
            activeItem: Icon(
              Icons.local_offer_outlined,
              color: activeIconColor,
            ),
            itemLabel: labels[2],
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.person_rounded, color: inactiveIconColor),
            activeItem: Icon(Icons.person_rounded, color: activeIconColor),
            itemLabel: labels[3],
          ),
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
