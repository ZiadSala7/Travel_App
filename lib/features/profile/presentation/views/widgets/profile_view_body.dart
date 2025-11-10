import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/list_tile_model.dart';
import 'custom_list_tile.dart';
import 'custom_text_alignment.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          CircleAvatar(
            radius: 43,
            child: ClipOval(child: Image.asset(AppAssets.assetsImagesSuccess)),
          ),
          SizedBox(height: 10),
          Text(
            'Ziad Salah',
            textAlign: TextAlign.center,
            style: AppTextStyles.text20Bold.copyWith(color: AppColors.white),
          ),
          SizedBox(height: 32),
          CustomTextAlignment(text: "Settings"),
          CustomListTile(listTileModel: settingModel(context)),
          SizedBox(height: 16),
          CustomTextAlignment(text: "Accepted"),
          Column(
            children: List.generate(
              accountModels(context).length,
              (index) =>
                  CustomListTile(listTileModel: accountModels(context)[index]),
            ),
          ),
          SizedBox(height: 16),
          Column(
            children: List.generate(
              upTodo(context).length,
              (index) => CustomListTile(listTileModel: upTodo(context)[index]),
            ),
          ),
          SizedBox(height: 16),
          CustomListTile(listTileModel: logOut(context)),
        ],
      ),
    );
  }
}
