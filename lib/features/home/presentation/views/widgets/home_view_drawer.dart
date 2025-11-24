import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';
import 'drawer_items.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.read<ThemeCubit>().state == lightTheme
          ? AppColors.white
          : AppColors.black,
      child: Column(
        children: [
          const DrawerHeader(decoration: BoxDecoration(), child: AppLogo()),
          DrawerItems(items: drawerItems(context)),
          const Spacer(),
        ],
      ),
    );
  }
}
