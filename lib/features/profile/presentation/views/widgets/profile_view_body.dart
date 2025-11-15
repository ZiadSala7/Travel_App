import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'profile_image_email_name.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        ProfileImageEmailAndName(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            itemCount: items(context).length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final item = items(context)[index];
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(item["icon"] as IconData),
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
    );
  }
}
