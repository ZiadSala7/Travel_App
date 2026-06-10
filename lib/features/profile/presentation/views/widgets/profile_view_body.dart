import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'profile_image_email_name.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final profileItems = items(context);

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      children: [
        const ProfileImageEmailAndName(),
        const SizedBox(height: 18),
        _ProfileSection(
          title: S.of(context).profile,
          items: profileItems.take(3).toList(),
        ),
        const SizedBox(height: 14),
        _ProfileSection(
          title: S.of(context).more,
          items: profileItems.skip(3).toList(),
          dangerLastItem: true,
        ),
      ],
    );
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({
    required this.title,
    required this.items,
    this.dangerLastItem = false,
  });

  final String title;
  final List<dynamic> items;
  final bool dangerLastItem;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 4, bottom: 8),
          child: Text(
            title,
            style: AppTextStyles.text16Bold.copyWith(color: scheme.onSurface),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: scheme.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: scheme.outline.withValues(alpha: 0.14)),
          ),
          child: Column(
            children: List.generate(items.length, (index) {
              final item = items[index] as Map<String, dynamic>;
              final isLast = index == items.length - 1;
              final isDanger = dangerLastItem && isLast;

              return Column(
                children: [
                  _ProfileTile(item: item, isDanger: isDanger),
                  if (!isLast)
                    Divider(
                      height: 1,
                      indent: 68,
                      color: scheme.outline.withValues(alpha: 0.12),
                    ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({required this.item, required this.isDanger});

  final Map<String, dynamic> item;
  final bool isDanger;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final accent = isDanger ? AppColors.redAccent : scheme.secondary;
    final titleColor = isDanger ? AppColors.redAccent : scheme.onSurface;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: item["onPressed"] as void Function()?,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(item["icon"] as IconData, color: accent, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item["title"] as String,
                  style: AppTextStyles.text16med.copyWith(color: titleColor),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: scheme.onSurface.withValues(alpha: 0.45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
