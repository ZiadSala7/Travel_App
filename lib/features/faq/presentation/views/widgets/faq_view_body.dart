import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'categories_section.dart';
import 'faq_item.dart';

class FAQViewBody extends StatelessWidget {
  const FAQViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(height: 15),
          Text(S.of(context).howCanHelp, style: AppTextStyles.text22Bold),
          const SizedBox(height: 15),

          /// 🟦 Categories
          const CategoriesSection(),
          const SizedBox(height: 20),

          /// 🔥 Top Questions
          Text(S.of(context).topQ, style: AppTextStyles.text20Bold),
          const SizedBox(height: 12),
          ...faqs.map(
            (item) =>
                ExpandableFAQItem(question: item["q"]!, answer: item["a"]!),
          ),
        ],
      ),
    );
  }
}
