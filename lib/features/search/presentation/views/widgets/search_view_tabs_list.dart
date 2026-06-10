import 'package:flutter/material.dart';

import '../../../../../core/utils/travel_icons.dart';
import '../../../../../generated/l10n.dart';

List<Widget> searchViewTabsList(BuildContext context) {
  return [
    Tab(text: S.of(context).car, icon: const Icon(TravelIcons.car)),
    Tab(text: S.of(context).flights, icon: const Icon(TravelIcons.flight)),
    Tab(text: S.of(context).hotel, icon: const Icon(TravelIcons.hotel)),
  ];
}
