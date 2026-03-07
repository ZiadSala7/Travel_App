import 'package:flutter/material.dart';

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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final navBackground = isDark
        ? const Color(0xFF0D1B2A)
        : AppColors.orangeEdit2;
    const selectedColor = AppColors.black;
    // ignore: deprecated_member_use
    final unselectedColor = Colors.white.withOpacity(isDark ? 0.68 : 0.78);

    return Scaffold(
      body: pages[_currentIndex],
      floatingActionButton: const FloatingActionButtonBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: navBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildNavItemRowList(selectedColor, unselectedColor),
        ),
      ),
    );
  }

  List<Widget> _buildNavItemRowList(
    Color selectedColor,
    Color unselectedColor,
  ) {
    return [
      _buildNavItem(
        Icons.home,
        S.of(context).home,
        0,
        selectedColor,
        unselectedColor,
      ),
      _buildNavItem(
        Icons.card_travel,
        S.of(context).rehlaty,
        1,
        selectedColor,
        unselectedColor,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(width: 20),
      ), // space for FAB
      _buildNavItem(
        Icons.qr_code_outlined,
        S.of(context).promocode,
        2,
        selectedColor,
        unselectedColor,
      ),
      _buildNavItem(
        Icons.person_outline_sharp,
        S.of(context).profile,
        3,
        selectedColor,
        unselectedColor,
      ),
    ];
  }

  Widget _buildNavItem(
    IconData icon,
    String label,
    int index,
    Color selectedColor,
    Color unselectedColor,
  ) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? selectedColor : unselectedColor),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? selectedColor : unselectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
