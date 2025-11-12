import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).profile,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              itemCount: items(context).length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final item = items(context)[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    item["icon"] as IconData,
                    color: Colors.black54,
                  ),
                  title: Text(
                    item["title"] as String,
                    style: AppTextStyles.text18Med,
                  ),
                  trailing: item["value"] != null
                      ? Text(
                          item["value"] as String,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      : const Icon(Icons.arrow_back_ios_new, size: 16),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
