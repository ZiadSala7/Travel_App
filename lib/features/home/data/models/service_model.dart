import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';

class ServiceModel {
  final String image, title;
  final Color color;
  final Function() onPressed;

  ServiceModel({
    required this.image,
    required this.title,
    required this.color,
    required this.onPressed,
  });
}

List<ServiceModel> serviceModels(BuildContext context) => [
  ServiceModel(
    image: AppAssets.assetsImagesBuild,
    title: S.of(context).hotel,
    color: AppColors.building,
    onPressed: () {},
  ),
  ServiceModel(
    image: AppAssets.assetsImagesNewPlane,
    title: S.of(context).flights,
    color: AppColors.airplane,
    onPressed: () {},
  ),
  ServiceModel(
    image: AppAssets.assetsImagesCarr,
    title: S.of(context).car,
    color: AppColors.carClr,
    onPressed: () {},
  ),
];
