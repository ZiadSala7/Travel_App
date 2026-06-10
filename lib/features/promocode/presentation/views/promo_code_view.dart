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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          S.of(context).offers,
          style: AppTextStyles.text22Bold.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: const PromoCodeViewBody(),
    );
  }
}
