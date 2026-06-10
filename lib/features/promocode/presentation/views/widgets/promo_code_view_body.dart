import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'promo_code_card.dart';

class PromoCodeViewBody extends StatelessWidget {
  const PromoCodeViewBody({super.key});

  static const String _baseUrl = 'https://safer-be-p.netlify.app';
  static const String _heroImage =
      '$_baseUrl/Update-images/mantas-hesthaven-_g1WdcKcV3w-unsplash.jpg';

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = S.of(context);

    final offers = [
      _PromoOffer(
        title: l10n.promoRiyadhTitle,
        subtitle: l10n.promoRiyadhSubtitle,
        description: l10n.promoRiyadhDescription,
        category: l10n.promoDomestic,
        location: l10n.promoRiyadhTitle,
        promoCode: 'RIYADH20',
        discount: '20%',
        imageUrl: '$_baseUrl/Logo/saifaldhaher-vAkHAP27QMk-unsplash.jpg',
      ),
      _PromoOffer(
        title: l10n.promoJeddahTitle,
        subtitle: l10n.promoJeddahSubtitle,
        description: l10n.promoJeddahDescription,
        category: l10n.promoDomestic,
        location: l10n.promoJeddahTitle,
        promoCode: 'JEDDAH15',
        discount: '15%',
        imageUrl: '$_baseUrl/Update-images/cyril-mzn-WSvth_lwCi0-unsplash.jpg',
      ),
      _PromoOffer(
        title: l10n.promoDubaiTitle,
        subtitle: l10n.promoDubaiSubtitle,
        description: l10n.promoDubaiDescription,
        category: l10n.promoGulf,
        location: l10n.promoDubaiTitle,
        promoCode: 'DUBAI25',
        discount: '25%',
        imageUrl:
            '$_baseUrl/Update-images/benjamin-voros-jv15x2Gs5F8-unsplash.jpg',
      ),
      _PromoOffer(
        title: l10n.promoIstanbulTitle,
        subtitle: l10n.promoIstanbulSubtitle,
        description: l10n.promoIstanbulDescription,
        category: l10n.promoEurope,
        location: l10n.promoIstanbulTitle,
        promoCode: 'ISTANBUL30',
        discount: '30%',
        imageUrl:
            '$_baseUrl/Update-images/damiano-baschiera-hFXZ5cNfkOk-unsplash.jpg',
      ),
      _PromoOffer(
        title: l10n.promoMaldivesTitle,
        subtitle: l10n.promoMaldivesSubtitle,
        description: l10n.promoMaldivesDescription,
        category: l10n.promoLuxuryHolidays,
        location: l10n.promoMaldivesTitle,
        promoCode: 'MALDIVES35',
        discount: '35%',
        imageUrl: '$_baseUrl/Update-images/nils-nedel-ONpGBpns3cs-unsplash.jpg',
      ),
    ];

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const _PromoHero(imageUrl: _heroImage),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 26, 18, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  l10n.promoCuratedDestinationsLabel,
                  style: AppTextStyles.text14Bold.copyWith(
                    color: scheme.primary,
                    fontSize: 11,
                    letterSpacing: 2.4,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${l10n.promoHandpickedTitle} ',
                        style: TextStyle(color: scheme.onSurface),
                      ),
                      TextSpan(
                        text: l10n.promoDestinationsAccent,
                        style: TextStyle(color: scheme.primary),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text30Bold.copyWith(
                    fontSize: 30,
                    height: 1.15,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  l10n.unlockDealsSubtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text14med.copyWith(
                    color: scheme.onSurface.withValues(alpha: 0.62),
                    height: 1.55,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const _CategoryChips(),
              const SizedBox(height: 18),
              for (final offer in offers) ...[
                PromoCodeCard(
                  promoCode: offer.promoCode,
                  description: offer.description,
                  imageUrl: offer.imageUrl,
                  title: offer.title,
                  category: offer.category,
                  discount: offer.discount,
                  subtitle: offer.subtitle,
                  location: offer.location,
                ),
                const SizedBox(height: 16),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _PromoHero extends StatelessWidget {
  const _PromoHero({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = S.of(context);

    return SizedBox(
      height: 430,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            errorBuilder: (context, error, stackTrace) =>
                Container(color: scheme.surfaceContainerHighest),
          ),
          const DecoratedBox(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 56, 22, 34),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.flight_takeoff_rounded,
                          color: scheme.primary,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          l10n.promoHeroBadge,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  l10n.promoHeroTitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text35Bold.copyWith(
                    color: Colors.white,
                    fontSize: 38,
                    height: 1.05,
                  ),
                ),
                Text(
                  l10n.promoHeroTitleAccent,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text35Bold.copyWith(
                    color: scheme.primary,
                    fontSize: 38,
                    height: 1.05,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  l10n.promoHeroTagline,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text16Bold.copyWith(
                    color: Colors.white.withValues(alpha: 0.84),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  l10n.promoHeroDescription,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text14med.copyWith(
                    color: Colors.white.withValues(alpha: 0.72),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryChips extends StatelessWidget {
  const _CategoryChips();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final chips = [
      (l10n.promoAllDestinations, Icons.public_rounded, true),
      (l10n.promoDomestic, Icons.flag_rounded, false),
      (l10n.promoGulf, Icons.wb_sunny_rounded, false),
      (l10n.promoEurope, Icons.location_city_rounded, false),
      (l10n.promoLuxuryHolidays, Icons.beach_access_rounded, false),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final chip in chips) ...[
            DecoratedBox(
              decoration: BoxDecoration(
                color: chip.$3
                    ? scheme.primary.withValues(alpha: 0.12)
                    : scheme.surface,
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: chip.$3
                      ? scheme.primary
                      : scheme.outline.withValues(alpha: isDark ? 0.22 : 0.16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 9,
                ),
                child: Row(
                  children: [
                    Icon(
                      chip.$2,
                      size: 15,
                      color: chip.$3
                          ? scheme.primary
                          : scheme.onSurface.withValues(alpha: 0.66),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      chip.$1,
                      style: AppTextStyles.text14Bold.copyWith(
                        color: chip.$3
                            ? scheme.primary
                            : scheme.onSurface.withValues(alpha: 0.66),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ],
      ),
    );
  }
}

class _PromoOffer {
  const _PromoOffer({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.category,
    required this.location,
    required this.promoCode,
    required this.discount,
    required this.imageUrl,
  });

  final String title;
  final String subtitle;
  final String description;
  final String category;
  final String location;
  final String promoCode;
  final String discount;
  final String imageUrl;
}
