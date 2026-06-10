import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/build_navigation_bar.dart';
import '../../../../../generated/l10n.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';
import '../auth_chooser_view.dart';

class GuestOrLoginViewBody extends StatelessWidget {
  const GuestOrLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    children: [
                      const SizedBox(height: 28),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: _LanguageChip(isDark: isDark),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.18),
                      FadeInDown(
                        delay: const Duration(milliseconds: 250),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: isDark
                                ? scheme.surface.withValues(alpha: 0.74)
                                : Colors.white.withValues(alpha: 0.74),
                            borderRadius: BorderRadius.circular(28),
                            border: Border.all(
                              color: scheme.outline.withValues(alpha: 0.12),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(
                                  alpha: isDark ? 0.22 : 0.08,
                                ),
                                blurRadius: 28,
                                offset: const Offset(0, 14),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 28,
                              vertical: 24,
                            ),
                            child: AppLogo(height: 96),
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      FadeInUp(
                        delay: const Duration(milliseconds: 350),
                        child: Text(
                          S.of(context).guestJourneyTitle,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.text22Bold.copyWith(
                            color: scheme.onSurface,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      FadeInUp(
                        delay: const Duration(milliseconds: 450),
                        child: Text(
                          S.of(context).guestJourneySubtitle,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.text14med.copyWith(
                            color: scheme.onSurface.withValues(alpha: 0.62),
                            height: 1.4,
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.10),
                      FadeInUp(
                        delay: const Duration(milliseconds: 550),
                        child: _AuthActionButton(
                          text: S.of(context).asAGuest,
                          icon: Icons.person_rounded,
                          backgroundColor: scheme.primary,
                          foregroundColor: scheme.onPrimary,
                          onPressed: () {
                            Navigator.pushNamed(context, BuildNavigationBar.id);
                          },
                        ),
                      ),
                      const SizedBox(height: 14),
                      FadeInUp(
                        delay: const Duration(milliseconds: 650),
                        child: _AuthActionButton(
                          text: S.of(context).continueLogin,
                          icon: Icons.login_rounded,
                          backgroundColor: scheme.secondary,
                          foregroundColor: scheme.onSecondary,
                          onPressed: () {
                            Navigator.of(context).pushNamed(AuthChooserView.id);
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _AuthActionButton extends StatelessWidget {
  const _AuthActionButton({
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: foregroundColor, size: 20),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.text16Bold.copyWith(
                    color: foregroundColor,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageChip extends StatelessWidget {
  const _LanguageChip({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surface.withValues(alpha: isDark ? 0.76 : 0.88),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.16)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.language_rounded,
              size: 16,
              color: scheme.onSurface.withValues(alpha: 0.70),
            ),
            const SizedBox(width: 6),
            Text(
              Localizations.localeOf(context).languageCode.toUpperCase(),
              style: AppTextStyles.text14Bold.copyWith(
                color: scheme.onSurface.withValues(alpha: 0.72),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
