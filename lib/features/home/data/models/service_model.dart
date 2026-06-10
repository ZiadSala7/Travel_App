import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/travel_icons.dart';
import '../../../../generated/l10n.dart';
import '../../../search/presentation/views/search_view.dart';

class ServiceModel {
  final String title;
  final IconData icon;
  final Color color;
  final Function() onPressed;

  ServiceModel({
    required this.title,
    required this.icon,
    required this.color,
    required this.onPressed,
  });
}

List<ServiceModel> serviceModels(BuildContext context) => [
  ServiceModel(
    title: S.of(context).flights,
    icon: TravelIcons.flight,
    color: AppColors.saferPrimary,
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SearchView(initialTab: 1),
        ),
      );
    },
  ),
  ServiceModel(
    title: S.of(context).hotel,
    icon: TravelIcons.hotel,
    color: AppColors.saferSecondary,
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SearchView(initialTab: 2),
        ),
      );
    },
  ),
  ServiceModel(
    title: S.of(context).car,
    icon: TravelIcons.car,
    color: AppColors.saferTextMuted,
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SearchView(initialTab: 0),
        ),
      );
    },
  ),
];
