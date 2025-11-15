import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key, required this.items});

  final dynamic items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.assetsImagesBkgrnd3),
                fit: BoxFit.cover,
              ),
            ),
            child: AppLogo(),
          ),
          Column(
            children: List.generate(
              items.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
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
                          : const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
