import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/promo_code_view_body.dart';

class PromoCodeView extends StatelessWidget {
  static const String id = 'favouritesView';
  const PromoCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).promocode, style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: const PromoCodeViewBody(),
    );
  }
}
