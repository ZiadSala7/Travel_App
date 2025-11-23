import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/drawer_items.dart';

class ContactView extends StatelessWidget {
  static const String id = 'contactView';
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    var items = contactViewItems(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).contact, style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          DrawerItems(items: items),
          const Spacer(),
        ],
      ),
    );
  }
}
