import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key, required this.items});

  final dynamic items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.read<ThemeCubit>().state == lightTheme
          ? AppColors.white
          : AppColors.black,
      child: Column(
        children: [
          const DrawerHeader(decoration: BoxDecoration(), child: AppLogo()),
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
                    const Divider(),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
