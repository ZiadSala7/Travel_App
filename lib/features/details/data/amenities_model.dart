import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class AmenitiesModel {
  final String title;
  final IconData? icon;

  AmenitiesModel({required this.title, this.icon});
}

List<AmenitiesModel> hotelAmenities(BuildContext context) => [
  AmenitiesModel(title: S.of(context).wifi, icon: Icons.wifi),
  AmenitiesModel(title: S.of(context).restaurants, icon: Icons.restaurant),
  AmenitiesModel(title: S.of(context).parking, icon: Icons.car_repair),
  AmenitiesModel(title: S.of(context).gym, icon: Icons.fitness_center),
  AmenitiesModel(
    title: S.of(context).breakfast,
    icon: Icons.free_breakfast_outlined,
  ),
  AmenitiesModel(title: S.of(context).tv, icon: Icons.tv_outlined),
  AmenitiesModel(title: S.of(context).privateBathroom, icon: Icons.shower),
  AmenitiesModel(title: S.of(context).comfortBeds, icon: Icons.bed_outlined),
];

List<AmenitiesModel> carAmenities(BuildContext context) => [
  AmenitiesModel(title: S.of(context).airCond),
  AmenitiesModel(title: S.of(context).automatic),
  AmenitiesModel(title: S.of(context).gps),
  AmenitiesModel(title: S.of(context).bluetooth),
];

List<AmenitiesModel> flightAmenities(BuildContext context) => [
  AmenitiesModel(title: S.of(context).wifi, icon: Icons.wifi),
  AmenitiesModel(title: S.of(context).entertainment, icon: Icons.tv_outlined),
  AmenitiesModel(
    title: S.of(context).powerOutiet,
    icon: Icons.electric_bolt_sharp,
  ),
  AmenitiesModel(title: S.of(context).meals, icon: Icons.restaurant),
];
