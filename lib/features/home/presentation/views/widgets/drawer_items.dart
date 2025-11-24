import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({super.key, required this.items});

  final dynamic items;

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.items.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // drawer item ListTile
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(widget.items[index]["icon"] as IconData),
                title: Text(
                  widget.items[index]["title"] as String,
                  style: AppTextStyles.text18Med,
                ),
                trailing: widget.items[index]["value"] != null
                    ? Text(
                        widget.items[index]["value"] as String,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    : const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: widget.items[index]["onPressed"],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
