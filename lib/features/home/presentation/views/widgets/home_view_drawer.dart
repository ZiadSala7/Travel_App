import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';
import 'drawer_items.dart';

class HomeViewDrawer extends StatelessWidget {
  const HomeViewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isLight = context.watch<ThemeCubit>().state == lightTheme;
    final foreground = isLight ? AppColors.charcoalGray : AppColors.white;

    return Drawer(
      backgroundColor: isLight ? AppColors.offWhite : AppColors.deepCharcoal,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(26)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isLight
                      ? [AppColors.orangeEdit, AppColors.appbarClr]
                      : [const Color(0xFF0D1B2A), const Color(0xFF0D1B2A)],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26080E1E),
                    blurRadius: 18,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [AppLogo(height: 80), SizedBox(height: 14)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).more,
                  style: AppTextStyles.text16Bold.copyWith(color: foreground),
                ),
              ),
            ),
            Expanded(child: DrawerItems(items: drawerItems(context))),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isLight ? AppColors.white : AppColors.charcoalGray,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.verified_user_outlined,
                    color: foreground,
                  ),
                  title: Text(
                    S.of(context).privacy,
                    style: AppTextStyles.text14med.copyWith(color: foreground),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14,
                    // ignore: deprecated_member_use
                    color: foreground.withOpacity(0.72),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
