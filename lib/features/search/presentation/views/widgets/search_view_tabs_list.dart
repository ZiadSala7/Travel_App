import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

List<Widget> searchViewTabsList(BuildContext context) {
  return [
    Tab(text: S.of(context).car, icon: Icon(Icons.car_rental)),
    Tab(text: S.of(context).flights, icon: Icon(Icons.airplanemode_active)),
    Tab(text: S.of(context).hotel, icon: Icon(Icons.home_work_outlined)),
  ];
}
