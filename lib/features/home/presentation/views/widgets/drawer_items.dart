import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key, required this.items});

  final dynamic items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // drawer item ListTile
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
                    : const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: items[index]["onPressed"],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
