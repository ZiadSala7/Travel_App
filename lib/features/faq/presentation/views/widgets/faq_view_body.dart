import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'categories_section.dart';
import 'faq_item.dart';

class FAQViewBody extends StatelessWidget {
  const FAQViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDark
              ? [
                  const Color(0xFF1A2638),
                  const Color(0xFF24354D),
                  const Color(0xFF2A3D58),
                ]
              : [
                  const Color(0xFFF8FBFF),
                  const Color(0xFFF1F6FF),
                  const Color(0xFFE8F0FF),
                ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            // Welcome section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark
                      ? [
                          const Color(0xFF2A3D58),
                          const Color(0xFF24354D),
                        ]
                      : [
                          const Color(0xFFFFFFFF),
                          const Color(0xFFF1F6FF),
                        ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: isDark
                        ? const Color(0x40000000)
                        : const Color(0x18060A1E),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.support_agent_rounded,
                    size: 50,
                    color: Color(0xFFF07E48),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    S.of(context).howCanHelp,
                    style: AppTextStyles.text22Bold.copyWith(
                      color: isDark ? Colors.white : const Color(0xFF1855AD),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "ابحث عن إجابات للأسئلة الشائعة حول خدماتنا",
                    style: AppTextStyles.text14med.copyWith(
                      color: isDark ? Colors.white70 : AppColors.mediumGray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            /// 🟦 Categories
            Text(
              'Categories',
              style: AppTextStyles.text18Bold.copyWith(
                color: isDark ? Colors.white : const Color(0xFF1855AD),
              ),
            ),
            const SizedBox(height: 12),
            const CategoriesSection(),
            const SizedBox(height: 24),

            /// 🔥 Top Questions
            Row(
              children: [
                Container(
                  width: 4,
                  height: 24,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFF07E48),
                        Color(0xFFF94C00),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  S.of(context).topQ,
                  style: AppTextStyles.text18Bold.copyWith(
                    color: isDark ? Colors.white : const Color(0xFF1855AD),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...faqs.map(
              (item) =>
                  ExpandableFAQItem(question: item["q"]!, answer: item["a"]!),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
