import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class AppLogoCollapsedToolbar extends StatelessWidget {
  const AppLogoCollapsedToolbar({
    super.key,
    required this.collapsedHeight,
    required this.collapsedToolbarDy,
    required this.collapsedOpacity,
    required this.isDark,
  });

  final double collapsedHeight;
  final double collapsedToolbarDy;
  final double collapsedOpacity;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final surfaceColor = isDark
        ? AppColors.darknessMode
        : Theme.of(context).colorScheme.surface;

    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: collapsedHeight,
          child: Transform.translate(
            offset: Offset(0, collapsedToolbarDy),
            child: Container(
              color: Color.lerp(
                Colors.transparent,
                surfaceColor,
                collapsedOpacity,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 12, 16, 8),
                child: IgnorePointer(
                  ignoring: collapsedOpacity < 0.1,
                  child: Opacity(
                    opacity: collapsedOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _HeaderCircleButton(
                          icon: Icons.menu_rounded,
                          isDark: isDark,
                          onPressed: () =>
                              Scaffold.maybeOf(context)?.openDrawer(),
                        ),
                        const AppLogo(height: 60),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderCircleButton extends StatelessWidget {
  const _HeaderCircleButton({
    required this.icon,
    required this.isDark,
    this.onPressed,
  });

  final IconData icon;
  final bool isDark;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: isDark
            ? const Color.fromRGBO(255, 255, 255, 0.10)
            : const Color.fromRGBO(26, 37, 51, 0.04),
        border: Border.all(
          color: isDark
              ? const Color.fromRGBO(255, 255, 255, 0.18)
              : const Color.fromRGBO(26, 37, 51, 0.10),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Theme.of(context).colorScheme.onSurface),
        splashRadius: 20,
      ),
    );
  }
}
