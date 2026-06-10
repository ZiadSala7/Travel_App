import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../managers/currency_cubit/currency_cubit.dart';
import '../managers/language_cubit/language_cubit.dart';
import '../managers/language_cubit/language_states.dart';
import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
import '../utils/app_text_styles.dart';
import 'constants.dart';

void openCurrencySheet(BuildContext context) {
  final cubit = context.read<CurrencyCubit>();
  final currencies = getCurrencies(context);
  final currentCode = cubit.state.currencyCode;

  _showPreferenceSheet(
    context: context,
    title: S.of(context).currency,
    subtitle: S.of(context).chooseCurrencySubtitle,
    child: Column(
      children: currencies.map((currency) {
        final isSelected = currency["code"] == currentCode;

        return _PreferenceOptionTile(
          icon: Icons.payments_rounded,
          title: currency["name"]!,
          subtitle: "${currency["code"]} . ${currency["symbol"]}",
          isSelected: isSelected,
          onTap: () {
            cubit.changeCurrency(
              code: currency["code"]!,
              symbol: currency["symbol"]!,
            );
            Navigator.pop(context);
          },
        );
      }).toList(),
    ),
  );
}

void openLanguageSheet(BuildContext context) {
  final cubit = context.read<LanguageCubit>();
  final isArabic = cubit.state is ArabicLanguage;

  _showPreferenceSheet(
    context: context,
    title: S.of(context).language,
    subtitle: S.of(context).chooseLanguageSubtitle,
    child: Column(
      children: [
        _PreferenceOptionTile(
          icon: Icons.language_rounded,
          title: S.of(context).englishLanguage,
          subtitle: S.of(context).englishLanguageSubtitle,
          isSelected: !isArabic,
          onTap: () async {
            if (isArabic) {
              await cubit.changeLanguage();
            }
            if (context.mounted) Navigator.pop(context);
          },
        ),
        _PreferenceOptionTile(
          icon: Icons.translate_rounded,
          title: S.of(context).arabicLanguage,
          subtitle: S.of(context).arabicLanguageSubtitle,
          isSelected: isArabic,
          onTap: () async {
            if (!isArabic) {
              await cubit.changeLanguage();
            }
            if (context.mounted) Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

void openThemeSheet(BuildContext context) {
  final cubit = context.read<ThemeCubit>();
  final isLight = cubit.state == lightTheme;

  _showPreferenceSheet(
    context: context,
    title: S.of(context).theme,
    subtitle: S.of(context).chooseThemeSubtitle,
    child: Column(
      children: [
        _PreferenceOptionTile(
          icon: Icons.light_mode_rounded,
          title: S.of(context).lightTheme,
          subtitle: S.of(context).lightThemeSubtitle,
          isSelected: isLight,
          onTap: () async {
            if (!isLight) {
              await cubit.toggleTheme();
            }
            if (context.mounted) Navigator.pop(context);
          },
        ),
        _PreferenceOptionTile(
          icon: Icons.dark_mode_rounded,
          title: S.of(context).darkTheme,
          subtitle: S.of(context).darkThemeSubtitle,
          isSelected: !isLight,
          onTap: () async {
            if (isLight) {
              await cubit.toggleTheme();
            }
            if (context.mounted) Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

void _showPreferenceSheet({
  required BuildContext context,
  required String title,
  required String subtitle,
  required Widget child,
}) {
  final scheme = Theme.of(context).colorScheme;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surface,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.18),
                  blurRadius: 30,
                  offset: const Offset(0, -10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 44,
                      height: 5,
                      decoration: BoxDecoration(
                        color: scheme.outline.withValues(alpha: 0.35),
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    title,
                    style: AppTextStyles.text22Bold.copyWith(
                      color: scheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: AppTextStyles.text14Reg.copyWith(
                      color: scheme.onSurface.withValues(alpha: 0.62),
                      height: 1.35,
                    ),
                  ),
                  const SizedBox(height: 16),
                  child,
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class _PreferenceOptionTile extends StatelessWidget {
  const _PreferenceOptionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final selectedColor = scheme.primary;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: isSelected
            ? selectedColor.withValues(alpha: 0.10)
            : scheme.surfaceContainerHighest.withValues(alpha: 0.38),
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(18),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? selectedColor.withValues(alpha: 0.14)
                        : scheme.surface,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    icon,
                    color: isSelected
                        ? selectedColor
                        : scheme.onSurface.withValues(alpha: 0.66),
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.text16Bold.copyWith(
                          color: scheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text14Reg.copyWith(
                          color: scheme.onSurface.withValues(alpha: 0.58),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? selectedColor : Colors.transparent,
                    border: Border.all(
                      color: isSelected
                          ? selectedColor
                          : scheme.outline.withValues(alpha: 0.55),
                    ),
                  ),
                  child: isSelected
                      ? Icon(
                          Icons.check_rounded,
                          color: scheme.onPrimary,
                          size: 16,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
