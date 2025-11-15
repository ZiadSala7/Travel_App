import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
import '../constants/constants.dart';
import '../utils/app_colors.dart';
import '../../generated/l10n.dart';
import 'floating_action_button_bottom_bar.dart';

class BuildNavigationBar extends StatefulWidget {
  static const String id = 'buildNavigationBar';
  const BuildNavigationBar({super.key});

  @override
  State<BuildNavigationBar> createState() => _BuildNavigationBarState();
}

class _BuildNavigationBarState extends State<BuildNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButtonBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: context.read<ThemeCubit>().state == lightTheme
            ? AppColors.appbarClr
            : AppColors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildNavItemRowList,
        ),
      ),
    );
  }

  List<Widget> get _buildNavItemRowList {
    return [
      _buildNavItem(Icons.home, S.of(context).home, 0),
      _buildNavItem(Icons.card_travel, S.of(context).rehlaty, 1),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const SizedBox(width: 20),
      ), // space for FAB
      _buildNavItem(Icons.favorite_border, S.of(context).favourites, 2),
      _buildNavItem(Icons.person_outline_sharp, S.of(context).profile, 3),
    ];
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? AppColors.deepOrange : null),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.deepOrange : null,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
