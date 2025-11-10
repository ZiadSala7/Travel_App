import 'package:flutter/material.dart';

import '../../features/favourites/presentation/views/favourites_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';

final onboardingPageController = PageController();

List<Widget> pages = [HomeView(), Scaffold(), FavouritesView(), ProfileView()];

List<String> typeOfCar = [
  "Sedan",
  "SUV",
  "BMW 7 series",
  "Mercedes S class",
  "14 seats toyota hiace",
  "9 seats meredes viano",
  "14 seats meredes viano",
  "22 seats Toyota cosater",
  "30 seats vip bus",
  "49 seats bus",
];

List<String> carServiceType = [
  "8 hours booking",
  "12 hours booking",
  "Airport pick up",
  "Airport drop off",
  "Hourly basic",
  "One year lease car",
];
