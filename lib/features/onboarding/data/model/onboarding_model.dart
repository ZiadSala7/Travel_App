import 'package:flutter/widgets.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../generated/l10n.dart';

class OnboardingModel {
  final String image, title, subTitle;
  final int index;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.index,
  });
}

List<OnboardingModel> onboardingModels(BuildContext context) => [
  OnboardingModel(
    image: AppAssets.assetsImagesOnbord1,
    title: S.of(context).onborO,
    subTitle: S.of(context).onborODes,
    index: 0,
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesOnbord2,
    title: S.of(context).onborT,
    subTitle: S.of(context).onborTDes,
    index: 1,
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesOnbord3,
    title: S.of(context).onborTh,
    subTitle: S.of(context).onborThDes,
    index: 2,
  ),
];
