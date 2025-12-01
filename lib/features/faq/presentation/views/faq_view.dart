import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/faq_view_body.dart';

class FAQsView extends StatelessWidget {
  const FAQsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).faq, style: AppTextStyles.text22Bold),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: const FAQViewBody(),
    );
  }
}
