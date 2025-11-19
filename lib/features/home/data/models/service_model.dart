import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import '../../../search/presentation/views/search_view.dart';

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
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const SearchView(initialTab: 2)),
      );
    },
  ),
  ServiceModel(
    image: AppAssets.assetsImagesNobkgrndPlane,
    title: S.of(context).flights,
    color: AppColors.airplane,
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const SearchView(initialTab: 1)),
      );
    },
  ),
  ServiceModel(
    image: AppAssets.assetsImagesNobkgrndCar,
    title: S.of(context).car,
    color: AppColors.steelBlue,
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const SearchView(initialTab: 0)),
      );
    },
  ),
];
