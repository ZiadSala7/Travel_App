import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../constants/constants.dart';
import '../utils/travel_icons.dart';

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
    final destinations = [
      _NavDestination(label: S.of(context).home, icon: TravelIcons.home),
      _NavDestination(label: S.of(context).rehlaty, icon: TravelIcons.trips),
      _NavDestination(label: S.of(context).promocode, icon: TravelIcons.offers),
      _NavDestination(label: S.of(context).profile, icon: TravelIcons.profile),
    ];

    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final inactiveColor = scheme.onSurface.withValues(
      alpha: isDark ? 0.72 : 0.58,
    );

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surface,
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: scheme.outline.withValues(alpha: 0.18)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: isDark ? 0.30 : 0.12),
                  blurRadius: 28,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Row(
                children: List.generate(destinations.length, (index) {
                  final destination = destinations[index];
                  final isSelected = _currentIndex == index;

                  return Expanded(
                    flex: isSelected ? 2 : 1,
                    child: _NavBarItem(
                      destination: destination,
                      isSelected: isSelected,
                      activeColor: scheme.primary,
                      inactiveColor: inactiveColor,
                      selectedBackgroundColor: isDark
                          ? scheme.primary.withValues(alpha: 0.18)
                          : scheme.primary.withValues(alpha: 0.12),
                      onTap: () {
                        setState(() => _currentIndex = index);
                      },
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavDestination {
  final String label;
  final IconData icon;

  const _NavDestination({required this.label, required this.icon});
}

class _NavBarItem extends StatelessWidget {
  final _NavDestination destination;
  final bool isSelected;
  final Color activeColor;
  final Color inactiveColor;
  final Color selectedBackgroundColor;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.destination,
    required this.isSelected,
    required this.activeColor,
    required this.inactiveColor,
    required this.selectedBackgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final foregroundColor = isSelected ? activeColor : inactiveColor;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isSelected ? selectedBackgroundColor : Colors.transparent,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Material(
        color: Colors.transparent,
        child: Semantics(
          label: destination.label,
          selected: isSelected,
          button: true,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(22),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isSelected ? 8 : 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(destination.icon, color: foregroundColor, size: 22),
                  if (isSelected) ...[
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        destination.label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: foregroundColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
