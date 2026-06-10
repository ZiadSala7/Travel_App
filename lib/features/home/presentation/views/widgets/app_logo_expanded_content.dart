import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class AppLogoExpandedContent extends StatelessWidget {
  const AppLogoExpandedContent({
    super.key,
    required this.expandedOpacity,
    required this.backgroundDy,
    required this.heroLogoDy,
    required this.heroLogoScale,
  });

  final double expandedOpacity;
  final double backgroundDy;
  final double heroLogoDy;
  final double heroLogoScale;

  @override
  Widget build(BuildContext context) {
    final isArabic = Directionality.of(context) == TextDirection.rtl;

    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Transform.translate(
            offset: Offset(0, backgroundDy),
            child: Opacity(
              opacity: expandedOpacity,
              child: Image.asset(
                AppAssets.assetsImagesSaferBeHero,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: expandedOpacity,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x66000000),
                    Color(0x8C000000),
                    Color(0xD9000000),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 18,
          right: 18,
          top: 74,
          child: Opacity(
            opacity: expandedOpacity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _GlassCircleButton(
                  icon: Icons.menu_rounded,
                  onPressed: () => Scaffold.maybeOf(context)?.openDrawer(),
                ),
                const AppLogo(height: 54),
              ],
            ),
          ),
        ),
        Positioned(
          top: 174,
          left: 0,
          right: 0,
          child: IgnorePointer(
            ignoring: true,
            child: Transform.translate(
              offset: Offset(0, heroLogoDy),
              child: Opacity(
                opacity: expandedOpacity,
                child: Transform.scale(
                  scale: heroLogoScale,
                  child: Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(999),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.20),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 24,
                              offset: Offset(0, 12),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.public_rounded,
                                color: AppColors.saferPrimary,
                                size: 18,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                isArabic
                                    ? '\u0633\u0627\u0641\u0631 \u062d\u0648\u0644 \u0627\u0644\u0639\u0627\u0644\u0645'
                                    : 'Go Around The World',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const AppLogo(height: 108),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -1,
          height: 28,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _GlassCircleButton extends StatelessWidget {
  const _GlassCircleButton({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 42,
          width: 42,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withValues(alpha: 0.20)),
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
        ),
      ),
    );
  }
}
