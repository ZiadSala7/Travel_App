import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../features/faq/presentation/views/faq_view.dart';
import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
import '../../features/home/presentation/views/contact_view.dart';
import '../managers/language_cubit/language_cubit.dart';
import '../../features/favourites/presentation/views/favourites_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../generated/l10n.dart';

// page controller for onboarding view
final onboardingPageController = PageController();

// pages for build navigation bar
List<Widget> pages = const [
  HomeView(),
  FAQsScreen(),
  FavouritesView(),
  ProfileView(),
];

// testing drop down list of car types
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

// testing drop down list of car service types
List<String> carServiceType = [
  "8 hours booking",
  "12 hours booking",
  "Airport pick up",
  "Airport drop off",
  "Hourly basic",
  "One year lease car",
];

// home view tabs for sliver appbar services
List<String> homeViewTabs(BuildContext context) => [
  S.of(context).flights,
  S.of(context).hotel,
  S.of(context).car,
];

// items of profile view
items(BuildContext context) => [
  {"icon": Icons.edit_outlined, "title": S.of(context).editProf},
  {"icon": Icons.lock_outline, "title": S.of(context).changePass},
  {"icon": Icons.phone_outlined, "title": S.of(context).contact},
  {"icon": Icons.group_outlined, "title": S.of(context).whoWe},
  {"icon": Icons.description_outlined, "title": S.of(context).privacy},
  {"icon": Icons.logout_outlined, "title": S.of(context).logout},
];

// drawer items for home view drawer
drawerItems(BuildContext context) => [
  {
    "icon": Icons.monetization_on_outlined,
    "title": S.of(context).currency,
    "value": "EGP",
    "onPressed": () {},
  },
  {
    "icon": FontAwesomeIcons.language,
    "title": S.of(context).language,
    "value": S.of(context).langChanger,
    "onPressed": () {
      context.read<LanguageCubit>().changeLanguage();
    },
  },
  {
    "icon": Icons.flag_outlined,
    "title": S.of(context).country,
    "value": "مصر",
    "onPressed": () {},
  },
  {
    "icon": Icons.phone_outlined,
    "title": S.of(context).contact,
    "onPressed": () {
      Navigator.of(context).pushNamed(ContactView.id);
    },
  },
  {
    "icon": context.watch<ThemeCubit>().state == lightTheme
        ? Icons.light_mode_outlined
        : Icons.dark_mode_outlined,
    "title": S.of(context).theme,
    "value": context.watch<ThemeCubit>().state == lightTheme
        ? S.of(context).lightTheme
        : S.of(context).darkTheme,
    "onPressed": () {
      context.read<ThemeCubit>().toggleTheme();
    },
  },
];

// drawer items for home view drawer
contactViewItems(BuildContext context) => [
  {
    "icon": FontAwesomeIcons.whatsapp,
    "title": S.of(context).wts,
    "onPressed": () {},
  },
  {"icon": Icons.phone, "title": S.of(context).phoneCont, "onPressed": () {}},
  {
    "icon": FontAwesomeIcons.facebook,
    "title": S.of(context).facebook,
    "onPressed": () {},
  },
];

// custom box shadow list of container
List<BoxShadow> get customBoxShadowList {
  return const [
    BoxShadow(color: Colors.black12, blurRadius: 12, offset: Offset(0, 4)),
  ];
}

// tourist classes for reservation
List<String> touristClasses(BuildContext context) => [
  S.of(context).tc1,
  S.of(context).tc2,
  S.of(context).tc3,
  S.of(context).tc4,
];

// testing network hotel image
String networkImgHotel =
    "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg";

// testing overview utill api
String overView =
    "A hotel is a commercial establishment that provides accommodation, food, and various services to travelers and guests. Hotels vary widely in size, style, and quality—ranging from small family-run inns to large luxury resorts. Their main purpose is to offer a comfortable, safe, and convenient place for people to stay temporarily.";
