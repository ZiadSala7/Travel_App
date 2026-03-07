import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class AppLogoSliverAppBar extends StatelessWidget {
  const AppLogoSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final gradientColors = isDark
        ? const [Color(0xFF0D1B2A), Color(0xFF1B263B)]
        : const [AppColors.orangeEdit, AppColors.appbarClr];

    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      expandedHeight: 175,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradientColors,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return _HeaderCircleButton(
                            icon: Icons.menu_rounded,
                            onPressed: () => Scaffold.of(context).openDrawer(),
                          );
                        },
                      ),
                      const Spacer(),
                      const Spacer(),
                      const _HeaderCircleButton(
                        icon: Icons.notifications_none_rounded,
                      ),
                    ],
                  ),
                  const AppLogo(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderCircleButton extends StatelessWidget {
  const _HeaderCircleButton({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const onHeader = AppColors.white;
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: onHeader.withOpacity(0.16),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: onHeader),
        splashRadius: 20,
      ),
    );
  }
}
