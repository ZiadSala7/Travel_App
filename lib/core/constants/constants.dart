import 'package:flutter/material.dart';

import '../../features/favourites/presentation/views/favourites_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../generated/l10n.dart';

final onboardingPageController = PageController();

List<Widget> pages = const [HomeView(), Scaffold(), FavouritesView(), ProfileView()];

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

List<String> homeViewTabs(BuildContext context) => [
  S.of(context).flights,
  S.of(context).hotel,
  S.of(context).car,
];

items(BuildContext context) => [
  {"icon": Icons.edit_outlined, "title": S.of(context).editProf},
  {"icon": Icons.lock_outline, "title": S.of(context).changePass},
  {"icon": Icons.phone_outlined, "title": S.of(context).contact},
  {"icon": Icons.group_outlined, "title": S.of(context).whoWe},
  {"icon": Icons.description_outlined, "title": S.of(context).privacy},
  {"icon": Icons.logout_outlined, "title": S.of(context).logout},
];

drawerItems(BuildContext context) => [
  {
    "icon": Icons.monetization_on_outlined,
    "title": S.of(context).currency,
    "value": "EGP",
  },
  {
    "icon": Icons.language_outlined,
    "title": S.of(context).language,
    "value": "عربي",
  },
  {"icon": Icons.flag_outlined, "title": S.of(context).country, "value": "مصر"},
  {"icon": Icons.share_outlined, "title": S.of(context).wts},
];

List<BoxShadow> get customBoxShadowList {
  return const [
    BoxShadow(color: Colors.black12, blurRadius: 12, offset: Offset(0, 4)),
  ];
}

List<String> touristClasses(BuildContext context) => [
  S.of(context).tc1,
  S.of(context).tc2,
  S.of(context).tc3,
  S.of(context).tc4,
];

String networkImgHotel =
    "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg";

String networkImgCar = "https://www.hajjumrahtech.com/images/flight-bg.jpg";

String overView =
    "A hotel is a commercial establishment that provides accommodation, food, and various services to travelers and guests. Hotels vary widely in size, style, and quality—ranging from small family-run inns to large luxury resorts. Their main purpose is to offer a comfortable, safe, and convenient place for people to stay temporarily.";
