import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class HotelServiceModel {
  final String title;
  final IconData icon;

  HotelServiceModel({required this.title, required this.icon});
}

List<HotelServiceModel> amenities(BuildContext context) => [
  HotelServiceModel(title: S.of(context).wifi, icon: Icons.wifi),
  HotelServiceModel(title: S.of(context).restaurants, icon: Icons.restaurant),
  HotelServiceModel(title: S.of(context).parking, icon: Icons.car_repair),
  HotelServiceModel(title: S.of(context).gym, icon: Icons.fitness_center),
  HotelServiceModel(
    title: S.of(context).breakfast,
    icon: Icons.free_breakfast_outlined,
  ),
  HotelServiceModel(title: S.of(context).tv, icon: Icons.tv_outlined),
  HotelServiceModel(title: S.of(context).privateBathroom, icon: Icons.shower),
  HotelServiceModel(title: S.of(context).comfortBeds, icon: Icons.bed_outlined),
];
