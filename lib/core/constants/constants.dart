import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/managers/currency_cubit/currency_cubit.dart';

import '../../features/country/presentation/managers/country_chooser_cubit/country_cubit.dart';
import '../../features/country/presentation/views/country_view.dart';
import '../../features/faq/presentation/views/faq_view.dart';
import '../../features/promocode/presentation/views/promo_code_view.dart';
import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
import '../../features/home/presentation/views/contact_view.dart';
import '../managers/language_cubit/language_cubit.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../generated/l10n.dart';
import 'currency.dart';

// page controller for onboarding view
final onboardingPageController = PageController();

// pages for build navigation bar
List<Widget> pages = const [
  HomeView(),
  FAQsScreen(),
  PromoCodeView(),
  ProfileView(),
];

List<Map<String, String>> getCurrencies(BuildContext context) {
  final s = S.of(context);

  return [
    {"code": "USD", "name": s.currency_usd, "symbol": "\$"},
    {"code": "EUR", "name": s.currency_eur, "symbol": "€"},
    {"code": "EGP", "name": s.currency_egp, "symbol": "£"},
    {"code": "SAR", "name": s.currency_sar, "symbol": "﷼"},
    {"code": "AED", "name": s.currency_aed, "symbol": "د.إ"},
  ];
}

/// Dynamic localized list of countries
List<Map<String, String>> getCountries(BuildContext context) {
  final s = S.of(context);

  return [
    {"code": "DZ", "name": s.country_DZ},
    {"code": "BH", "name": s.country_BH},
    {"code": "KM", "name": s.country_KM},
    {"code": "DJ", "name": s.country_DJ},
    {"code": "EG", "name": s.country_EG},
    {"code": "IQ", "name": s.country_IQ},
    {"code": "JO", "name": s.country_JO},
    {"code": "KW", "name": s.country_KW},
    {"code": "LB", "name": s.country_LB},
    {"code": "LY", "name": s.country_LY},
    {"code": "MR", "name": s.country_MR},
    {"code": "MA", "name": s.country_MA},
    {"code": "OM", "name": s.country_OM},
    {"code": "PS", "name": s.country_PS},
    {"code": "QA", "name": s.country_QA},
    {"code": "SA", "name": s.country_SA},
    {"code": "SO", "name": s.country_SO},
    {"code": "SD", "name": s.country_SD},
    {"code": "SY", "name": s.country_SY},
    {"code": "TN", "name": s.country_TN},
    {"code": "AE", "name": s.country_AE},
    {"code": "YE", "name": s.country_YE},
  ];
}

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
    "value": context.watch<CurrencyCubit>().state.currencyCode,
    "onPressed": () => openCurrencySheet(context),
  },
  {
    "icon": FontAwesomeIcons.language,
    "title": S.of(context).language,
    "value": S.of(context).langChanger,
    "onPressed": () async {
      await context.read<LanguageCubit>().changeLanguage();
    },
  },
  {
    "icon": Icons.flag_outlined,
    "title": S.of(context).country,
    "value": context.watch<CountryCubit>().state.countryName,
    "onPressed": () {
      Navigator.of(context).pushNamed(CountryView.id);
    },
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
