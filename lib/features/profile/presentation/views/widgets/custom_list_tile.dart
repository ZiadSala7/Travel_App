import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/list_tile_model.dart';

class CustomListTile extends StatelessWidget {
  final ListTileModel listTileModel;
  const CustomListTile({super.key, required this.listTileModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: listTileModel.onPressed,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(
          listTileModel.leadingIcon,
          color: listTileModel.title == "Logout"
              ? AppColors.redAccent
              : AppColors.white,
        ),
        title: Text(
          listTileModel.title,
          style: AppTextStyles.text16Reg.copyWith(),
        ),
        trailing: listTileModel.title == "Logout"
            ? null
            : Icon(Icons.keyboard_arrow_right, color: AppColors.white),
      ),
    );
  }
}
