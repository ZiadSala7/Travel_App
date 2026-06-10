import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class PromoCodeCard extends StatefulWidget {
  final String promoCode;
  final String title;
  final String description;
  final String? imageUrl;
  final String category;
  final String discount;
  final String subtitle;
  final String location;

  const PromoCodeCard({
    super.key,
    required this.promoCode,
    required this.description,
    required this.title,
    required this.category,
    required this.discount,
    required this.subtitle,
    required this.location,
    this.imageUrl,
  });

  @override
  State<PromoCodeCard> createState() => _PromoCodeCardState();
}

class _PromoCodeCardState extends State<PromoCodeCard> {
  bool _isCopied = false;

  Future<void> _copyCode() async {
    await Clipboard.setData(ClipboardData(text: widget.promoCode));

    setState(() {
      _isCopied = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isCopied = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: isDark ? Colors.white.withValues(alpha: 0.038) : scheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.16)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          height: 340,
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (widget.imageUrl != null)
                Image.network(
                  widget.imageUrl!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: scheme.surfaceContainerHighest,
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      color: scheme.onSurface.withValues(alpha: 0.46),
                    ),
                  ),
                ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x1A000000),
                      Color(0x59000000),
                      Color(0xE6000000),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _CategoryPill(label: widget.category),
                        const Spacer(),
                        Text(
                          widget.location,
                          style: AppTextStyles.text14Bold.copyWith(
                            color: Colors.white.withValues(alpha: 0.72),
                            fontSize: 12,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.text25Bold.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                widget.subtitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.text14Bold.copyWith(
                                  color: scheme.primary,
                                  height: 1.35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        _DiscountBadge(discount: widget.discount),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.text14med.copyWith(
                        color: Colors.white.withValues(alpha: 0.80),
                        height: 1.45,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.white.withValues(alpha: 0.18),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 12,
                              ),
                              child: Text(
                                widget.promoCode,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.text14Bold.copyWith(
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          height: 46,
                          child: ElevatedButton.icon(
                            onPressed: _copyCode,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isCopied
                                  ? scheme.secondary
                                  : scheme.primary,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                              ),
                            ),
                            icon: Icon(
                              _isCopied
                                  ? Icons.check_rounded
                                  : Icons.copy_rounded,
                              size: 16,
                            ),
                            label: Text(
                              _isCopied
                                  ? S.of(context).copied
                                  : S.of(context).copy,
                              style: AppTextStyles.text14Bold.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryPill extends StatelessWidget {
  const _CategoryPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: scheme.primary.withValues(alpha: 0.28)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
        child: Text(
          label,
          style: AppTextStyles.text14Bold.copyWith(
            color: scheme.primary,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class _DiscountBadge extends StatelessWidget {
  const _DiscountBadge({required this.discount});

  final String discount;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.primary,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.20),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.bolt_rounded, color: Colors.white, size: 16),
            const SizedBox(width: 4),
            Text(
              discount,
              style: AppTextStyles.text18Bold.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
