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
    image: AppAssets.assetsImagesView2,
    title: S.of(context).onborO,
    subTitle: S.of(context).onborODes,
    index: 0,
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesView6,
    title: S.of(context).onborT,
    subTitle: S.of(context).onborTDes,
    index: 1,
  ),
  OnboardingModel(
    image: AppAssets.assetsImagesView4,
    title: S.of(context).onborTh,
    subTitle: S.of(context).onborThDes,
    index: 2,
  ),
];
