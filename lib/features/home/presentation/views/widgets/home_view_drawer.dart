import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key, required this.items});

  final dynamic items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Spacer(),
            Column(
              spacing: 20,
              children: List.generate(
                items.length,
                (index) => Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(items[index]["icon"] as IconData),
                      title: Text(
                        items[index]["title"] as String,
                        style: AppTextStyles.text18Med,
                      ),
                      trailing: items[index]["value"] != null
                          ? Text(
                              items[index]["value"] as String,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            )
                          : const Icon(Icons.arrow_back_ios_new, size: 16),
                      onTap: () {},
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
